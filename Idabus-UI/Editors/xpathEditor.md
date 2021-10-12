---
layout: docs

title: XPath Editor
#description: 
filename: xpathEditor.md
permalink: /editors/xpathEditor/

nav_order: 11
parent: Editors
status: in progress
toc: true
---

# Configuration

|Property name| Default value | Annotation |
|--|--|--|
|exportAttributes|DisplayName|Any Portal attribute with the specific binding to the searched object type can be exported|
|exportHeader|false|if "Export to Clipboard" is set to true, it is possible to set Export with Header to true, too|
|exportSeparator| \| |if "Export to Clipboard" is set to true, it is possible to specify the separator-char|
|exportState|enabled: false, stateLocked: 'locked',stateUnlocked: 'editable',|It is possible to specify which data is locked and which is editable via queries in the advanced tab. The result of these two queries is also visible when exporting, as the elements are marked whether they are locked or editable|
|prefix|undefined|describes everything in a filter (e.g. in a Set > Advanced Settings > Filter) **before** the object type is specified (e.g. "/Person)|
|showAttributePicker|true|This setting is dependent on ViewResults. If the button "View Results" is clicked and this setting is set to true, the result table can be extended by further attributes, which can be selected via a drop-down menu.|
|showQuery|false|Currently it is hidden in the UI but it is implemented for future features|
|showResults|true|if set to false, there is no button below the XPath-Editor to display the results of the query|
|suffix|undefined|describes everything in a filter (e.g. in a Set > Advanced Settings > Filter) **after** the object type is specified (e.g. "/Person)|
|tableConfig|new ResourceTableConfig()|Configuration of the new table -> result table|
|tableConfig.applyQueryOnLoad|false|if set to true, the query is only loaded as soon as the "View Results" button is clicked on|
|tableConfig.cellPadding|3|The CSS-Padding (0 - n) to be used for the table|
|tableConfig.objectType|Person|Object type which gets displayed in the results table. Allowed values: All portal object types|
|tableConfig.pageSize|20|Specifies how many objects can be displayed on one page.|
|tableConfig.resizable|true|Specifies, that the table is dynamically adjusted according to the elements that need to be displayed |
|tableConfig.tableHeight|300|Specifies the height for this table|

# Configuration in UI
![image.png](/img/image-e24b7a89-5f1a-4127-bcc8-f8b0939b2ffb.png)
![image.png](/img/image-f707ffc1-84c1-4777-85c1-58f062d25fc0.png)
![image.png](/img/image-53b9746a-b14c-4731-bd3f-2da5800c1ffe.png)

![]()

# Event handler

## onChangeObs()

## onShowResults()
triggers if the button "view results" is pushed and shows the results of the query

## onShowQuery()
Currently it is hidden in the UI but it is implemented for future features.

## onResetValue()
triggers if the button "Reset value" is pushed and clears the Path filter

## onAttributeChange(attributes: Array<AttributeResource>)
