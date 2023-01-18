---
layout: docs

title: Search Scope Settings
#desription: <add description if needed>
filename: Search-scope-settings.md
permalink: /gobalconfig/searchscopesettings/

nav_order: 25
status: in progress
parent:  Global Configuration
toc: true
---

{% include toc.md %}

# General

Search scope settings will be used in simple search and resource list page. It is possible to create multiple search scopes for resources of same object type. Search scopes can normally be connected with with resource list, editing form and creation form using its name and provide the possibility to manage multiple user interfaces for a same resource type (e.g different user types like employee, contract and external have individual editing and creation form for themself).

![images_search_scopes.png](/img/images_search_scopes-819b2824-cede-455a-a6ba-cfcc0041e279.png)

# General properties

|Key|Type|Default|Description|
|--|--|--|--|
|name|string||name of the search scope, can be used to connect other components|
|text|string||text of the search scope to be displayed as category name in simple search and as title in resource list, localisable|
|type|string||specifies the object type of the search scope, if no **typeQuery** is defined, this property will be used to list all resources in the resource list|
|icon|string||icon of the search scope using [material icons](https://fonts.google.com/icons?icon.set=Material+Icons)|
|query|xpath||defines a xpath query used for searching resources, use **%SearchText%** for the input text and **[#LoginID]** for resource id of the current login user|
|exactQuery|xpath||defines a xpath query used for searching resources in exact mode (with ! at the beginning), which matches exactly the input text, use **%SearchText%** for the input text and **[#LoginID]** for resource id of the current login user|
|navigationKey|string||defines a name used to navigate to the correct editing view of a certain resource|
|isSubScope|boolean||reserved to differentiate main scope (all resources of a certain resource type) and sub scope (all resources with certain common properties of a certain resource type)|

# Properties for simple search

|Key|Type|Default|Description|
|--|--|--|--|
|enabled|boolean||enable / disable the search scope in simple search (search scope is still accessible in resource list)|
|tooltipAttribute|string||defines an attribute and uses its value as the tooltip, if not defined, the tooltip is not visible|

## displayedAttributesInSearch

Only apply to simple search, defines which attributes should be displayed. If not defined, display name will be used as the main and only attribute to show in the simple search

|Key|Type|Default|Description|
|--|--|--|--|
|main|string||the main attribute displayed at the beginning, only one attribute can be defined as main attribute|
|secondary|string[]||secondary attributes displayed after the main attribute|
|unitWidth|number||a percentage number to define the width of every secondary attributes|

# Properties for resource list

|Key|Type|Default|Description|
|--|--|--|--|
|typeQuery|xpath||defines a xpath query used for listing all the wanted resources in resource list page. use **%SearchText%** for the input text and **[#LoginID]** for resource id of the current login user|
|selectable|boolean||defines whether the result displayed in resource list is selectable, if set to false, no records can be selected and thus, no actions can be applied (readonly like)|
|linkActions|[Link Actions](/IDABUS-Identity-Solution/Documentation/Global-configuration/Generic-enums#linkactions)|defines which navigation option can be displayed in the identity link context menu on the resource list page|
|defaultLinkAction|native &#124; navigate &#124; sideView|defines the default navigation action when clicking on the identity link on the resource list page|
|pageSize|number||defines the page size on the resource list page, no effect to the simple search. overrides the pageSize setting in the global settings|
|attributes|string[]||defines attributes to be displayed as column on the resource list page, this setting will be overridden through the columns setting|
|availableAttributes|string[]||defines a set of attributes shown in the attribute picker on the resource list page, if not defined, all attributes of the defined resource type are available in the attribute picker|

## columns

[Generic column settings](/IDABUS-Identity-Solution/Documentation/Global-configuration/Generic-column-settings)
