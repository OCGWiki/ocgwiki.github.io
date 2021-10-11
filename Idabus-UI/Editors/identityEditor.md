---
layout: docs

title: Identity Editor
description: This is the IDABUS UI Installation Guide
filename: identityEditor.md
permalink: /identityEditor/

nav_order: 6
parent: Editors
status: in progress
toc: true
---

# Configuration

|Property name| Default value | Annotation |
|--|--|--|
|allowEmptySearch|false|if enabled, it is possible to search all without search string|
|attributesToShow|name: 'DisplayName', width: 50|attributes that are shown, allowed values: all attributes that are connected to object type|
|isMultivalue|false|if set to true, multiple identities can be added as identity editor value|
|lettersToTrigger|3|number of charachters needed to trigger normal search|
|objectType|person|type of object for identity editor value|
|photoAttribute|Photo|attribute that contains the photo of the user in the search|
|photoPlaceHolder|Photo|material icon shown as photo placeholder in the search|
|popupHeight|0|defines the vertical space the popup can use when displaying suggestions/results|
|popupWidth|0|defines the horizontal space the popup can use when displaying suggestions/results|
|queryEmptySearch|undefined|the XPath-Query defined as a string to be used for empty(search all) search operations|
|queryExactSearch|undefined|the XPath-Query defined as a string to be used for exact search operations|
|queryNormalSearch|undefined|the XPath-Query defined as a string to be used for normal search operations|
|showPhoto|false|if enabled the properties for the photo attribute and placeholder will be used to display a photo for each suggestion/result if available|
|suggestionNumber|6|defines the maximum number of matching suggestions (2 – 100) to be displayed when typing in characters|


# Configuration in UI

![image.png](/img/image-47117845-86af-49f6-816b-d18141852ab5.png)
![image.png](/img/image-8bc47ee8-0ef1-405a-9bb9-623f37a92e22.png)

# Event handler

## onFocuse()
Triggers if the identity editor gets focus

## onOpen()
Opens Kendo window to find an identity

## onFilterChange()
Triggers when letters of seach string are changed

## onEmptySearch()
Triggers when clicked on magnifying glass to find all possible options for identity editor

## onImport()
Triggers if single value is added

## onChange()
Triggers if the value of the identity editor has been changed

## onDoubleClick()
Triggers if the value of the identity editor has been double-clicked

## onBulkImport()
Triggers if multiple elements are added


