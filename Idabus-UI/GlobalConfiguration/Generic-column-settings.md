---
layout: docs

title: Generic Column Settings
#desription: <add description if needed>
filename: Generic-column-settings.md
permalink: /gobalconfig/genericcolumn/

nav_order: 8
status: in progress
parent:  Global Configuration
toc: true
---

{% include toc.md %}



# Columns

Using columns setting to make a more specific setting to the columns shown on the resource list page

|Key|Type|Default|Description|
|--|--|--|--|
|field|string||attribute name to display|
|title|string||title displayed on the column header, localisable. if not defined, the display name of the field will be used|
|isReference|boolean||indicate whether the attribute is a reference attribute, used for filtering|
|width|number||width of the column, available values are,<ul><li>positive number - width in pixel</li><li>0 - take available spaces automatically</li><li>negative number - the column is hidden</li></ul>|
|sortable|boolean||defines if the column is sortable|
|filterable|boolean||defines if the column is filterable|
|filter|boolean &#124; numeric &#124; text &#124; date|defines which filter type should be used|
|showStatus|object||settings for showing status|
|fallbackStatus|object||settings for showing fallback status|

## showStatus

|Key|Type|Default|Description|
|--|--|--|--|
|key|string||if the key equals the value of the column, the following defined settings will be shown|
|text|string|text of the status, if not defined, no text will be displayed|
|color|string|colour of the status, if not defined, no status dot will be displayed|

## fallbackStatus

If no states defined in the showStatus matches, the fallbackStatus will be displayed

|Key|Type|Default|Description|
|--|--|--|--|
|text|string|text of the status, if not defined, no text will be displayed|
|color|string|colour of the status, if not defined, no status dot will be displayed|
