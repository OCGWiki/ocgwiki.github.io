---
layout: docs

title: Installation
#description: This is the IDABUS UI Installation Article
filename: installation.md
permalink: /installation/installation/

nav_order: 1
status: in progress
parent: Installation Guide
toc: true
---

{% include toc.md %}


# Installation

Version: 4.2 or above



## Prerequisites

- MIM Service and Portal (2016 R2 or later)
- [.Net Core 3.1 Hosting Bundle](https://dotnet.microsoft.com/download/dotnet/3.1)
- [IIS Rewrite Module (install through Web Platform Installer)](https://www.iis.net/downloads?tabid=34&g=6&i=1691)
- [Lithnet PowerShell Module](https://github.com/lithnet/resourcemanagement-powershell/wiki/Installing-the-module)
- MIMWAL Workflow (for backup workflow)

## Schema Extension

Add the following attributes and bindings in MIM Portal.
<br>
>Alternatively you can import the OCG Schema file (MIM2016R2SP1_SchemaOnly_ChangeSet_V2.xml), which already includes the schema extension.

<br>

| Attribute Name | System Name | Type | Multivalued | Bind to |
|--|--|--|--|--|
| OCG Configuration XML | ocgConfigurationXML | Unindexed string | No | Person, Set |
| OCG Admin View Sets | ocgAdminViewSetRefs | Reference | Yes | Person |
| OCG Primary View Set  | ocgPrimaryViewSetRef | Reference | No | Person |
| OCG Object Type | ocgObjectType | Indexed string | No | Set |
| OCG Object Scope | ocgObjectScope | Indexed string | No | Set |
| OCG Object Status | ocgObjectStatus | Indexed string | No | Set |
| OCG Object Source | ocgObjectSource | Indexed string | No | Set |
| OCG Is Active  | ocgIsActive | Boolean | No | Set |

>Administrators Set should have full access to OCG extension types and attributes. Additionally, ocgObjectType, ocgObjectStatus, ocgObjectScope and ocgObjectSource should be added to filter permissions

Make sure to run iisreset after extending schema

## Sets and MPRs

Add the following Sets and MPRs in MIM Portal
<br>
>Alternatively you can import the OCG Sets and MPRs file (MIM2016R2SP2_UISetsMPRs_ChangeSet.xml), which already includes the Sets and MPRs.

### Sets

- OCG UI: All UI Sets 

| ![dashboard.png](/img/set1_1-ce13d3a9-4e8c-46fa-b8b9-78648d7a5c44.png) |
|----|
| ![set1_2.png](/img/set1_2-ed2975d7-1f18-4ece-aaed-485d39955a95.png) |

<br>

- UI - Standard View

| ![set2_1.png](/img/set2_1-461f9eaa-e937-4f4d-8603-a761e9de4d0f.png) |
|----|
| ![set2_2.png](/img/set2_2-b2ea6469-5736-429d-ad38-a89765fddd93.png) |

Input "uibase" in the "OCG Object Type" attribute
Copy the content of "ui-config-example.json" from the installation package in the the "OCG Configuration XML" attribute
>If you get a 10000 character limitation error, you can use the "importUISettings.ps1" to import the "ui-config-example.json" file

### MPRs

- OCG UI: Users can control UI attributes of their own 

| ![mpr1_1.png](/img/mpr1_1-46f6627a-f187-4535-b079-aee9841be685.png) |
|---|
| ![mpr1_2.png](/img/mpr1_2-17d0823f-b01f-43b1-bf97-e76c870cb139.png) |


- OCG UI: Users can control UI Sets of their own

| ![mpr2_1.png](/img/mpr2_1-e43805a4-63fd-4a7f-ba61-9d58ca12dcb5.png) |
|----|
| ![mpr2_2.png](/img/mpr2_2-62ba0349-ff1f-48cc-bf99-756a3a4e1f43.png) |

 - OCG UI: Users can read UI Sets

| ![mpr3_1.png](/img/mpr3_1-bd8bd82d-4492-4f97-b8fb-5d215386b3af.png) |
|----|
| ![mpr3_2.png](/img/mpr3_2-a0e760e7-c8c4-4264-b056-d7ce47f03c9b.png) |


- OCG UI: Users can read selected attributes of Sets, where they are a member of

| ![mpr4_1.png](/img/mpr4_1-0304ac7a-fd30-4a01-9233-34e90706d48e.png) | 
|----|
| ![mpr4_2.png](/img/mpr4_2-05c6bf39-0a87-416d-a9db-96b2dafe3dea.png) |



## Backup Workflow for UI settings

>Refer to [Sets based UI Settings](/OCG-UI/Sets-based-UI-Settings) to learn how UI setting works. This section only shows how to deploy workflows to backup different UI settings

### Get [MIMWAL](https://github.com/microsoft/MIMWAL/wiki) version and token

Go to MIM Portal -> Administration -> All Resources -> Activity Information Configuration (AIC), open any MIMWAL AIC (display name starts with "WAL:") and write down the version number and the token displayed in the "Assembly Name" field.

### Get Micrsoft.ResourceManagement Version

Navigate to C:\Windows\Assembly and find the version number to the Microsoft.ResourceManagement library

| ![backup1_1.png](/img/backup1_1-1ca3373e-c135-41f4-ac9e-a3360c84fdb6.png) |
|----|
| ![backup1_2.png](/img/backup1_2-399e1720-72db-45a7-8943-65831bf14292.png) |

### Import Backup Workflow

Open the file "UISettingBackup_ChangeSet.xml" from the installation package and replace !mimWalVersion!, !token! and !resourceManagementVersion! with the real data from the above steps.
Import this file into MIM Portal, you should get 4 new objects:
- OCG UI: Create ocgConfiguration Object for UISettingBackup
This is the Workflow for the backup process
- OCG UI: Create ocgConfiguration Object for UISettingBackup on ocgConfigurationXML change
This is the MPR for the backup process
- OCG UI: Backup Setting - Backup per Day
This is a configuration object of type ocgConfiguration, defines how many backups should be made for each UI Set every day. Default is 5
- OCG UI: Backup Setting - Days to Backup
This is a configuration object of type ocgConfiguration, defines how long the backups should be held in MIM Portal before they are expired and deleted. Default is 30

>After importing the backup workflow, a backup object of type ocgConfiguration will be created every time UI Setting is changed. The display name of the backup object has the format<br>"UI Setting Backup - <UI Set Name> - <Created Time>"

## Publish OCG Data Service and OCG UI

>OCG UI v4.2 need the OCG Data Service v2.0.0 or above
1. Copy the OCGUI folder from the installation package to C:\inetpub
2. Add a website "OCGUI" in IIS with 8088 as port number, "C:\inetpub\OCGUI" as physical path and ".Net v4.5" as application pool
3. Convert "portal" to application
4. Enable "Anonymous Authentication" and "Windows Authentication" for "OCGUI" website
5. Enable "Anonymous Authentication" and "Windows Authentication" for "portal" application
>**In real production environment you may need additional settings in IIS like Host Name; Application Pool with Service Account, which has SPN registered; Negotiate only Authentication, etc.**


| ![iis1_1.png](/img/iis1_1-b89c9e6f-3e03-4526-9166-9db6e12c35a6.png) | 
|----------|
|![iis1_2.png](/img/iis1_2-73d6118a-c561-4c2e-a619-77cb0bcd2b08.png) |
| ![iis1_3.png](/img/iis1_3-e45e5ef9-db9d-44ff-8f76-b2c5a5968708.png) | 
| ![iis1_4.png](/img/iis1_4-98c5e49d-a8a7-4eee-a52d-a5a58a033991.png) |



