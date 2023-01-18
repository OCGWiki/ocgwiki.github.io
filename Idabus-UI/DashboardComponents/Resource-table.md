---
layout: docs

title: Resource Tile
#desription: <add description if needed>
filename: Resource-table.md
permalink: /dashboardcomponents/resourcetile/

nav_order: 20
status: in progress
parent: Dashboard Components
toc: true
---

{% include toc.md %}



# General

Resource table is used to display the result of a xpath query with pre-defined attributes as columns

# Configuration

![images_resource_table.png](/img/images_resource_table-25b34692-7f64-4e2a-ae88-67c4dae54a86.png)

## General tab

|Key|Type|Default|Description|
|--|--|--|--|
|title|string||title of the resource table|
|font size|number|14|font size of the table|
|padding|number|10|table cell padding|
|object type|string|Person|object type of the resource showing in the table, this setting only effects the displayed attributes (for getting the displayed attributes defined on the object type)|
|navigation key|string||a keyword to define the navigation behaviour, if not defined, the object type will be used for navigation|
|table height|number||defines the table height, if not set, the table will adjust its height according to the table content|
|query|string||a xpath query with [placeholders](/uisettings/placeholders/), whose result will be displayed in the table|
|date format|string||a string to define the datetime format, if not set, the default one from language resource will be used|
|export to clipboard|boolean|false|allows export to clipboard|
|export to pdf|boolean|false|allows export to pdf|
|export to excel|boolean|false|allows export to excel|

## Columns tab

[Generic column settings](/gobalconfig/genericcolumn/)

## Paging & sorting tab

|Key|Type|Default|Description|
|--|--|--|--|
|scroll type|basic &#124; virtual|basic|<ul><li>basic - paging using buttons</li><li>virtual - paging using infinite scroll</li></ul>|
|scroll height|number|36|only applied if scroll type is set to virtual, defines the height of a cell for calculating the scroll distance|
|type|numeric &#124; input|numeric|defines how to specify a page<ul><li>numeric - click on the page number</li><li>input - input a page number in the text box</li></ul>|
|show paging info|boolean|true|show paging info|
|show paging buttons|boolean|true|show paging buttons|
|page size|number|10|page size of the table|
|maximum counter number|number|5|defines the max. paging counter should be displayed. if the total page count exceeds this number, they will be omitted and displayed with ...|
|sortable|boolean|false|defines whether the table is sortable|
|sort mode|single &#124; multiple|single|defines whether multiple columns could be used for sorting|
|allow unsort|boolean|true|allow table stay unsorted|

## select & resize tab

|Key|Type|Default|Description|
|--|--|--|--|
|resizable|boolean|false|defines whether the table columns are resizable|
|selectable|boolean|false|defines whether the table rows are selectable|
|select only by checkbox|boolean|false|if set to true, rows can be selected only by clicking the leading checkbox|
|selection mode|single &#124; multiple|single|defines whether multiple rows can be selected|
|checkbox width|number|45|obsoleted, this setting should not be changed|
|link actions|[Link Actions](/globalconfig/genericenums/#linkactions)|navigate &#124; sideView|defines the allowed link actions|
|default link action|native &#124; navigate &#124; sideView|read from config file|defines the default link action when clicking a link|
|disable link|boolean|false|if set to true, no identity link will be applied in the table|
