---
layout: docs

title: Configuration Files
#desription: <add description if needed>
filename: Configuration-files.md
permalink: /gobalconfig/configfiles/

nav_order: 5
status: in progress
parent:  Global Configuration
toc: true
---

{% include toc.md %}



# File location

- Standard - /assets/config
- Override - /app/customisation/assets/config

# URL settings

|Key|Type|Default|Description|
|--|--|--|--|
|dataServiceUrl|string||service url to the IDABUS Data Service for FIM / MIM (On-Premises only)
|portalUrl|string||url to the FIM / MIM Portal (On-Premises only)|
|nextGenServiceUrl|string||url to the IDABUS Identity Engine (cloud only)|
|helpLinkUrl|string|https://ocgwiki.github.io|url to a help web page|

# Generic UI settings

|Key|Type|Default|Description|
|--|--|--|--|
|pageTitle|string|Idabus Identity Portal|Page title displayed as the tab name in a browser|
|routePrefix|string|""|defines the path name if the UI is deployed as an application under a website, otherwise should be empty|
|startPath|string|/app|defines the first displayed page of the UI|
|domain|string||defines the domain name (On-Premises only)|
|encryptionKey|string|ContosoMIMCrypto|a key to encrypt user name and password sent to the IDABUS Data Service during the form authentication. should be set as the same as the key defined in IDABUS Data Service on the server side|
|loginUserAttributes|string[]|<ul><li>DisplayName</li><li>AccountName</li><li>Photo</li><li>JobTitle</li><li>ocgObejctSource</li></ul>|define the attributes of the login user to be loaded when the UI is starting|
|photoAttributes|string[]|<ul><li>Photo</li></ul>|defines attributes which should be interpreted as photo|
|photoWidthToHeightRatio|number|1|defines the ratio of height and width to show photos|
|pageSize|number|20|page size of all tables in the UI. this setting can be overridden in the individual table settings|
|blurLevel|number|1|defines the blur strength on the loading overlay, set to 0 to disable the blur effect|
|attributeFontSize|number|16|font size of all attribute editors|
|lettersToTriggerSearch|number|3|defines how many letters should be typed in until a search will be triggered|
|simpleSearchAutoComplete|boolean|true|enable / disable auto-complete by simple search. if disabled, a return key must be given to start the search|
|modelUpdateOn|change &#124; blur &#124; submit|change|defines how validation should be triggered, during the typing or when lost focus or on clicking submit
|hideNoReadAccessMessage|boolean|false|hide the message on an attribute by lack of read permission|
|hideNoWriteAccessMessage|boolean|true|hide the message on an attribute by lack of write permission|
|wizardTopPosition|number|100|defines the margin top value for all popup wizard|
|navigateAfterCreation|boolean|false|defines whether de UI should navigate to the created resource direct after the creation wizard is submitted, this setting can be overridden in individual wizard settings|
|keepAliveDuration|number|3600000|defines the idle time before the UI session expires, in milliseconds. if set to less than 10000, the session will never expire|
|keepAliveCheckPeriod|number|900000|defines the period to check the idle time|
|maintenanceMode|boolean|false|enable / disable maintenance mode|
|maintenanceExceptions|string[]|[]|defines a list of account names, which can exceptional login to the system during the maintenance mode|
|defaultLinkAction|native &#124; navigate &#124; sideView|navigate|defines what should happen when an identity link is clicked, the behaviours are:<ul><li>native - show the identity in a FIM / MIM popup window (on-premises only)</li>navigate - navigate to the identity<li>sideView - show the identity in side view</li></ul>|
|linkActions|[Link Actions](/IDABUS-Identity-Solution/Documentation/Global-configuration/Generic-enums#linkactions)|["navigate", "sideView"]|defines which link actions should appear in the context menu of an identity link|

# Supported languages

[DOCS/Language Files](/IDABUS-Identity-Solution/Documentation/Global-configuration/Language-Files)

# Images

[DOCS/Image Settings](/IDABUS-Identity-Solution/Documentation/Global-configuration/Image-settings)

# MSAL settings

|Key|Type|Default|Description|
|--|--|--|--|
|enableMsal|boolean|true|enable / disable Azure AD authentication|
|clientId|string||client app registration id|
|authority|string||authority server address using the Azure AD tenant id|
|redirectUri|string|redirect address after user authenticated himself|
|postLogoutRedirectUri|string||redirect address after user logout|
|unprotectedResources|string[]|["assets/", "uploadSaveUrl"]|paths excluded from the protection of Azure AD authentication|
|protectedResources|Array[]||paths excluded in the protection of Azure AD authentication|

# Bread crumb

|Key|Type|Default|Description|
|--|--|--|--|
|showBreadCrumb|boolean|true|show / hide bread crumb navigation|
|breadCrumb.unitLength|number|20|defines the max. length of a bread crumb unit, characters exceed the max. length will be cut and replaced with ...|
|bread.unitCount|number|5|defines the max. units displayed on the bread crumb bar, new coming units will replace the old units|

# Advanced view & preview

|Key|Type|Default|Description|
|--|--|--|--|
|advancedViewPermission|string[]|["Administrators"]|set / xpathtemplate names, which can access the resource advanced view (on-premises only)|
|advncedViewSettings.hiddenAttributes|string[]|<ul><li>DetectedRulesList</li><li>ExpectedRulesList</li><li>AuthNWFLockedOut</li><li>AuthNWFRegistered</li><li>AuthNLockoutRegistrationID</li></ul>|defines attributes, which should be excluded from advanced view|
|advncedViewSettings.readonlyAttributes|string[]|<ul><li>ObjectID</li><li>ObjectType</li><li>MVObjectID</li><li>Creator</li><li>CommittedTime</li><li>CreatedTime</li><li>DeletedTime</li><li>ExpirationTime</li><li>ResourceTime</li><li>LastUpdateTime</li></ul>|defines attributes, which should be shown as readonly in advanced view|
|advancedViewPermission|string[]|["Administrators"]|set / xpathtemplate names, which can access the resource preview (not available for on-premises)|
|previewResourceReadOnly|boolean|true|if set to true, all resources opened in preview mode cannot be changed or previewed (preview in preview)|

# Sidebar

[DOCS/Sidebar settings](/IDABUS-Identity-Solution/Documentation/Global-configuration/Sidebar-settings)

# Structure view

[DOCS/Structure view](/IDABUS-Identity-Solution/Documentation/Global-configuration/Structure-view)

# Uniqueness checks

|Key|Type|Default|Description|
|--|--|--|--|
|attributeName|string||defines the attribute, for which the uniqueness check should be applied|
|objectType|string[]||defines the attribute types, for which the uniqueness check should be applied|
|condition|xpath||defines a xpath, if at lease one resource is returned through the execution of this xpath, the uniqueness check will fail.<br>use %SearchText% as a placeholder for the input text|

# Export settings

|Key|Type|Default|Description|
|--|--|--|--|
|name|string||name of the export option, localisable|
|type|string||object type of the export option|
|query|xpath||defines a xpath to be used to query resources to export|
|attribute|string[]||a list of attributes to be included, if not specified, all attributes will be exported|
|selected|boolean||defines whether the export option is initially selected|

# Systems

[DOCS/System settings](/IDABUS-Identity-Solution/Documentation/Global-configuration/System-settings)

# Resources

[DOCS/Resources settings](/IDABUS-Identity-Solution/Documentation/Global-configuration/Resources-settings)

# Search scopes
