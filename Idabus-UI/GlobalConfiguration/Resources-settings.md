---
layout: docs

title: Resources Settings
#desription: <add description if needed>
filename: Resources-settings.md
permalink: /gobalconfig/resourcessettings/

nav_order: 20
status: in progress
parent:  Global Configuration
toc: true
---

{% include toc.md %}




# General

Resources page is the entry point for users to access different resources, including managed resources e.g. user and group objects, processes like privileged access control, on-boarding or off-boarding workflows etc. and configuration resources like permission rules, schema etc.
Users have only access to the pre-defined resources and according to their access rights, some of the resources can be shown or hidden.

![images_resources.png](/img/images_resources-7ba62614-23e6-4acd-b022-ca4f22cdd254.png)

# Access to all resources without configuration

As administrator, it is possible to access all FIM / MIM or IDABUS resources without pre-defined configurations. Goto settings and then click the button All resources.

![images_all_resources.png](/img/images_all_resources-ad70423f-5257-4fe5-b338-32f0d6a0eacf.png)

# Category properties

|Key|Type|Default|Description|
|--|--|--|--|
|key|string||category name|
|name|string|category display name, localisable|
|enabled|boolean||show / hide the category|
|items|object[]||resource items in the category|

# Resource item properties

|Key|Type|Default|Description|
|--|--|--|--|
|name|string||name of the resource item|
|enabled|boolean||show / hide the resource item|
|height|number||height of the resource item|
|width|number||width of the resource item|
|primaryIcon|string||primary icon for the resource item using [material icons]|(https://fonts.google.com/icons?icon.set=Material+Icons)
|primaryIconColor|string||colour of the primary icon|
|primaryImage|string||primary image of the resource item, must located under /assets/img folder|
|secondaryIcon|string||secondary icon for the resource item using [material icons]|
|secondaryIconColor|string||colour of the secondary icon|
|backgroundcolor|string||background colour of the resource item|
|title|string||title of the resource item|
|titleColor|string||colour of the title|
|description|string||description of the resource item|
|descriptionColor|string|colour of the description|
|primaryAction|string||a string to define which action should be taken when clicking the primary area of the component|
|secondaryAction|string||a string to define which action should be taken when clicking the secondary area of the component|
|persmissionSets|string[]||defines a list of sets / xpathtemplates, only users belong to these sets have access to trigger the primary action. if not defined, all users have access|
|actionSets|string[]||defines a list of sets / xpathtemplates, only users belong to these sets have access to trigger the secondary action. if not defined, all users have access|
