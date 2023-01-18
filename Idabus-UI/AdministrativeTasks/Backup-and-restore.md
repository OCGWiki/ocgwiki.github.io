---
layout: docs

title:Backup and Restore
#desription: <add description if needed>
filename: Backup-and-restore.md
permalink: /administrative-tasks/backup-and-restore/

nav_order: 10
status: in progress
parent: Administrative Tasks
toc: true
---

{% include toc.md %}



# Creating backups

## Preparations

The App Service running the IDABUS Identity Engine requires access to file storage for creating backups. Since the available storage that comes with App Service is limited (depending on the App Service Plan) it may be necessary to mount an additional Azure Storage for storing backup files.

To do this, go to the "Path mappings" tab on the Configuration page of the App Service and mount the Azure Storage of your choice under some path name. For instance, if you chose the path name to be "/mounts/backup/" the App Service can access the storage under `C:\mounts\backup`. You can go to the App Service's Kudu console to check if mounting the storage was successful.

## Backup API

Backups are created with `PUT /api/v1/Backup/create?folderPathForBackup=<folder>&comment=<comment>`.

* `folder` is the folder under which the backup files are created, e.g. `C:\mounts\backup` (see above).
* `comment` is an optional comment added to the backup event.

The body should be a backup specification of the following form:
```
{
  "Resources": {
    "isincluded": true,
    "isincremental": true,
    "previouscompletedtime": "2023-01-05T15:54:06.479Z"
  },
  "Events": {
    "isincluded": true,
    "isincremental": true,
    "previouscompletedtime": "2023-01-05T15:54:06.479Z"
  },
  "WorkflowExecutions": {
    "isincluded": true,
    "isincremental": true,
    "previouscompletedtime": "2023-01-05T15:54:06.479Z"
  }
}
```

For each of the three collection types, following properties are specified:
* `isincluded`: specifies if this collection should be included in the backup
* `isincremental`: specifies if the backup for this collection should be incremental, i.e. only contains files modified after the previous backup.
* `previouscompletedtime`: specifies the completed date time (in UTC) of the previous backup for this collection (only applicable if `isincremental` is set). If not specified, the system attempts to compute the correct value based on previous backup request events.

The API function returns immediately with the ID of the backup request event. This event contains information about whether the backup is still running, but more detailed information (including completion times) under the property `requestParameters`.

## Managing running backups

Only one backup can be running at a given time. If a backup is running, it can be canceled with `POST /api/v1/Backup/cancel`.

The API function `GET /api/v1/Backup/status` returns a non-empty *backup phase* if a backup is currently running, and an empty HTTP 204 otherwise.

There are four backup phases while a backup is running, and each backup undergoes all of these phases in this order:
1. `Basis`: the backup is running but the system continues executing requests and workflows as usual. This phase takes up almost the entire time of the backup.
2. `InMaintenanceMode`: the system is temporarily in maintenance mode, i.e. requests are processed, but workflows are queued for later execution.
3. `InMaintenanceAndReadonlyMode`: the system is temporarily in maintenance mode and read-only mode, i.e. write requests from the portal and other clients are rejected, and workflows are queued for later execution.
4. `Finalizing`: the backup has finished, and the system modes are about to be restored to their states just before the backup started.

## Backup considerations

In order to guarantee that resources and events line up consistently after a restore, backups should normally always include both resources and events. Workflow executions should also be included if it is important that workflows that were queued or running at the time of the backup continue at exactly the same state after a restore.

A reasonable schedule would be to incrementally backup all resources, events, and workflow executions simultaneously every night, and create a full backup of the three collections once a month.

Backups can take a long time and generate a very high load on the database. If this is an issue, you could temporarily increase the collection throughput to 10,000 RU/s during backups. (But note that this incurs a higher cost, and do not forget to restore the original throughput right after the backup, e.g. within a `finally` block when using a Powershell script!)

As mentioned above, each backup undergoes a number of phases, some of which restrict the functionality of the system (e.g. read-only mode). This usually only takes a very short amount of time, but still it is advisable to perform the backups during a time when not much is happening on the system.

## Restoring backups

Restoring a set of backups requires several separate steps.

1. The first step is to copy the relevant backup files onto a locally accessible file system, for which you can use Microsoft's AzCopy command line tool or the Microsoft Azure Storage Explorer. Not all backup files are needed: for each collection you want to restore, you only need to copy the last full backup created before the target date plus all incremental backups created after that up until the target date.

2. The backup files cannot be imported into the database directly, so the second step is to run the import tool to generate restore files. The import tool is a command line tool that comes with the Engine. It requires an `appsettings.json` configuration file to run. If you have not already done so, you can copy the app settings file from the Engine to the directory in which `importTool.exe` is stored (and rename it to `appsettings.json` if necessary), and customize the settings for logging. Then execute the import tool with administrator rights:
```
importTool.exe --generateRestoreFiles <backupFilesFolder> <outputFolderForFiles> <collectionTypes> <maximumBackupFinalTimeUtc>
```
You need to specify the following parameters:
* `<backupFilesFolder>`: the directory holding the backup files
* `<outputFolderForFiles>`: the directory in which the restore files are to be written
* `<collectionTypes>`: a comma-separated list (without spaces!) of collection types you wish to restore (e.g. `Resources,Events,WorkflowExecutions`)
* `<maximumBackupFinalTimeUtc>`: only backup files with a creation date time less than or equal to this date time are included. (E.g. `2022-12-31T22:00:00`)

3. The previous step produced JSON files with a sequence number that can be directly imported into an (empty!) Cosmos DB collection. Take care to import the files into the right collection, and import them in the order of ascending sequence numbers. For the import, you can use the Azure Cosmos DB Data Migration tool by Microsoft, but you must enable the option for overwriting existing documents. You may also use the import tool which tends to be faster for large amounts of data:
```
importTool.exe -exportRaw <restoreFile> <connectionString> <databaseName> <collectionName> <partitionKey>
```
(Note that for resources, the partition key is `objecttype`, and for events and workflow executions it is `id`.)

We recommend temporarily scaling up the collection throughput to 10,000 RU/s during restore.
