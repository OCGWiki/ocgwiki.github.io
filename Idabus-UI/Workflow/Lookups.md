---
layout: docs

title: Workflow Lookups
#desription: <add description if needed>
filename: Lookups.md
permalink: /workflow/lookups/

nav_order: 20
status: in progress
parent: Workflow
toc: false
---

{% include toc.md %}



# Lookups
Lookups are placeholders, which can be used in workflow activities. The value of the lookups will be evaluated in the run time of the workflow

The syntax of the lookups is case-insensitive. There is e.g. no difference between ```[//Target/ObjectId]``` and ```[tarGet/obJeCtID]```

## [//Requestor]
Contains the originator of the request. In the case of a simulation, this is the simulation actor.

## [//Delta]
Contains the changes caused by a request.
- Single-value changes of an attribute can be accessed using the attribute's system name as the key (e.g. ```[//Delta/DisplayName]```). The returned value is the value after the change (can be null).
- Multi-value changes of an attribute can be accessed using the attribute's system name in combination with "added" or "removed" keywords (e.g. ```[//Delta/ExplicitMember/added]```). The returned values include only the added or removed elements.
- Non-persistent multivalued changes are not included.
- Persistent large multivalued changes are included up to a maximum of 6000 elements.
- In a creation request, changes of single-value attributes and multi-value attributes are all mapped under ```[//Delta/{attribute}/added]``` (for large attributes only up to 6000 elements).
- In a deletion request, the value of single-value attributes are mapped to null; the value of multi-value attributes are mapped under ```[//Delta/{attribute}/removed]``` (for large attributes only up to 6000 elements).

## [//DeltaBeforeChange]
Contains the old values (can be null) before the change for all single-value attributes are taken place.
This lookup is IDABUS special, doesn't exist in [MIMWAL](https://microsoft.github.io/MIMWAL)
- **Cannot** be used to access the old values of multi-value attributes (to save space).
- In a creation request, the returned values for single-value attributes are mapped to null.
- In a deletion request, the returned values for single-value attributes are mapped to the old value before the deletion.

## [//Target]
Contains the target of the request. Only "current" (at the moment, the workflow activity is started) values are included.

## [//WorkflowData]
Like in [MIMWAL](https://microsoft.github.io/MIMWAL), can be used to cache data between workflow steps

## [//Queries]
Like in [MIMWAL](https://microsoft.github.io/MIMWAL), can be used to access the results of an XPath query

## [//Settings]
Used to access settings stored in appsettings.json (in the section WorkflowSettings.SettingsLookupData).

## [//Request]
Contains the request object.

### [//Request/UpdateType]
The change type (create, delete, modify) of the request (null if not applicable).

### [//Request/EventId]
The ID of the request event.

### [//Request/IncompleteDeltaEntries]
List of large attributes that are not fully included in the delta. Attributes are listed here if there would be more than 6,000 values.

## [//Approval]
Contains the approval object.

### [//Approval/ApprovalTitle]
The display title of the approval workflow

### [//Approval/CurrentApprovers]
References to the approvers in the current escalation level

### [//Approval/ApprovalDeadline]
The deadline in the current escalation level (in UTC)

### [//Approval/ApprovalDecision]
The status of the approval after termination (approved, rejected, expired or aborted)

### [//Approval/CompletedTime]
The termination time of the approval (in UTC)

### [//Approval/RequestorComment]
The comment provided by the requestor (can be null)
