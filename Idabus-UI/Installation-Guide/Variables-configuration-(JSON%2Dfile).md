---
layout: docs

title: Variables Configuration - JSON File
#desription: <add description if needed>
filename: Variables-configuration-(JSON%2Dfile).md
permalink: /portal-installation/configureInstallation/variablesconfig-json/

nav_order: 8
status: in progress
parent: Configure and verify installation
grand_parent: Portal Installation
toc: true
---

{% include toc.md %}

# Configure OCG UI

Navigate to the IIS folder, which hosts the OCG UI and edit the "customConfig.dev.json" file under app\customisation\assets\config.
>If OCG UI is published with --prod option, you should edit the "customConfig.prod.json" file

## General Settings

![config1_2.png](/img/config1_2-a9db3469-73c4-4145-8ed4-796ebb6ceaae.png)

| Key | Description |
|--|--|
|floatingSidebar|Show sidebar in minimum size. Set to false to show it in maximum size|
|navigateAfterCreation|Set the default action to navigate to the resource, which is just created through creation wizard. Set to false to stay in the same page after creation|
|linkAction|Set the default action when clicking a resource link<br>native - open native portal popup<br>popup - open OCG UI popup<br>sideView - open in side view<br>navigate - switch to resource detail view|navigate|
|loginUserAttributes|The attributes to be loaded after user has logged in. These attributes must exist in schema|
|images|Defines images used by logo and splash window|

## Supported languages

> You can add, remove, enable or disable language supports in customConfig.json. Every language should has its own translation source file (json format) under assert/translate/shared

![config_supported_languages.png](/img/config_supported_languages-231bc506-2ac6-4f80-9476-57c30c869f79.png)

|Key|Description|
|--|--|
|code|Supported browser language code, reserved for automatic browser language recognition |
|label|Display name of the language|
|route|Language routing name, reserved for automatic browser language recognition|
|culture|Language culture code used for fetching language resources from MIM service or IDABUS<br>The culture code for german is "de-DE" before MIM Portal version 4.5.286.0 and "de" after this version<br>Refer to [this page](https://docs.microsoft.com/en-us/bingmaps/rest-services/common-parameters-and-types/supported-culture-codes) to view a complete set of language codes|
|enabled|If set to false, the language is not able to choose from|
|icon|Language icon|

## Available systems

> You can use the same OCG UI web app to access different systems or environments (eg. development and production environments). You can also disable the system selection to make the first landing page to be the login page

![config_systems.png](/img/config_systems-1c9b230d-2871-403c-aa25-beed8e1101d3.png)

|Key|Description|
|--|--|
|name|System name used by the UI to identify the chosen system|
|displayName|System display name shown on the choose system page|
|type|onPrem - data are hosted on-Prem, OCG UI uses OCG Data Service to authenticate user and access data<br>cloud - data are hosted on cloud, OCG UI uses MSAL and IDABUS Service to authenticate user and access data|
|description|System description shown on the choose system page|
|icon|System icon shown on the choose system page|
|enabled|If set to false, the system is not available to choose from|
|config|All configurations in config.json except the systems configuration itself can be overwritten at this place to make a highly customised system configuration|

## Sidebar items

> You can add, remove, enable or disable side menu items. Every menu item should have a routing path pointing out the corresponding page or an event handler defining the click action

![config_sidebar_items.png](/img/config_sidebar_items-a5bde651-e43d-48ba-91a3-743e13864f68.png)

|Key|Description|
|--|--|
|name|Sidebar item name for identifying the chosen item|
|path|The routing name to a page to navigate to after clicking the sidebar item<br>If no path defined, an event handler should be defined to handle the click event|
|title|Display name shown on the sidebar|
|icon|Icon shown on the sidebar|
|enabled|If set to false, the sidebar item is not available to choose from|

## Search scopes

> Search scopes can be used to configure resource list view and the results shown in simple search

![config_search_scopes.png](/img/config_search_scopes-bca4980a-fc50-49c6-b4f7-250a1bcf4a94.png)

|Key|Description|
|--|--|
|name|Search scope name for identifying the search scope|
|type|Resource type of the search scope|
|text|Search scope display name shown on the simple search and the resource list view|
|icon|Search scope icon shown on the simple search and the resource list view|
|enabled|If set to false, the search scope is not shown on the simple search|
|query|The query used to fetch results, use %SearchText% (case insensitive) as a placeholder for inputs|
|attributes|The attributes to be loaded and shown in the resource list view|
|tooltipoAttribute|The attribute used to show as tooltip in simple search|

## All resources

> Configuration in this section are used to setup the resources page. You can enable, disable items, define their appearance or restrict their behaviors

![config_all_resources.png](/img/config_all_resources-8200d487-67ba-4b69-b88a-d942fa1cb26d.png)

|Key|Description|
|--|--|
|name|Resource name for identifying the resource|
|permissionSets|An array of string, defining which sets should see the resource item. Leave it to null if it is visible to all|
|actionSets|An array of String, defining which set can create the resource. Leave it to null if all users can create this resource|
|title|Display name of the resource shown on the resources page|
|titleColor|Color of title|
|description|Description of the resource shown on the resources page|
|descriptionColor|Color of description|
|primaryIcon|Icon of the resource shown on the resources page|
|primaryIconColor|Color of the primary icon|
|secondaryIcon|Secondary icon of the resource shown on the resources page|
|secondaryIconColor|Color of the secondary icon|
|backgroundColor|Background color|
|primaryAction|A reference key for the primary action (in most case navigating to the resource list view)|
|secondaryAction|A reference key for the secondary action (in most case bring up a creation wizard for the resource type)|
|enabled|If set to false, this resource item is not available to choose from|
|textWidth|The width applied for title and description|

## Uniqueness checks

> You can define a XPath query to fetch resources and indicate which attribute value should be unique within these resources. Use %SearchText% (case insensitive) as a placeholder for inputs

![config_uniqueness_check.png](/img/config_uniqueness_check-e3ae9de6-4080-406a-8b2e-fb1845760272.png)
