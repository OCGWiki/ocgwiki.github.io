---
layout: docs

title: Structure View
#desription: <add description if needed>
filename: Structure-view.md
permalink: /gobalconfig/structureview/

nav_order: 35
status: in progress
parent:  Global Configuration
toc: true
---

{% include toc.md %}



# Customise structure view

![images_structure_view.png](/img/images_structure_view-302ec35a-6ac5-41c2-8446-ace5d549bcd3.png)

# Properties

|Key|Type|Default|Description|
|--|--|--|--|
|structureViewInitQuery|string|/ocgOrgUnit[not(ocgParentRef=/ocgOrgUnit)]|xpath query to find the root elements|
|structureViewChildrenQuery|string|/ocgOrgUnit[ocgParentRef='%ParentID%']|xpath query to find the children elements, use %ParentID% as placeholder for the object id of the parent element|
|structureViewSort|string[]|["DisplayName:asc"]|sort definition in format <attribute name>:<sort order>, available sort orders are: <ul><li>asc / ascending</li><li>desc / descending</li></ul>
|structureViewPageSize|string|50|defines the max. displayed children elements under a parent element

# structureViewAttributeStyles

A list of definitions to style the structure view element under a certain condition. If multiple conditions should be applied, the later one will overwrite the former.
|Key|Type|Default|Description|
|--|--|--|--|
|attribute|string||attribute used to define the condition|
|value|boolean &#124; string||value used to evaluate whether the condition is true |
|icon|string||[material icon](https://fonts.google.com/icons?icon.set=Material+Icons) to show if the style should apply|
|color|string||colour to show if the condition style apply|
|tip|string||tooltip to show if the condition style apply|
