---
layout: docs

title: Identities Editor
#description:
filename: identitiesEditor.md
permalink: /editors/identitiesEditor/

nav_order: 7
parent: Editors
status: in progress
---
{% include toc.md %}

# Configuration

|Property name| Default value | Annotation |
|--|--|--|
|addMemberConfirmation|true|If enabled a confirmation dialog is presented to the user before adding/removing items to/from this list.|
|allowUnsort|true|if set to false, the displayed elements are unsorted|
|cellPadding|4|The CSS-Padding (0 - n) to be used for the Identity-List|
|checkboxSelectOnly|true|if set to true we can select only by clicking on checkbox. This option is not configurable in the UI|
|columns|field: 'DisplayName', width: null, sortable: true,|Selectable which attributes are to be displayed, in which width and whether they are should be sorted|
|dataExchangeAttribute|undefined|Specify an attribute for import/export functionality|
|dataExchangeCheckType|true|Checks if the editor of the exported data matches with the editor of the imported data and if the "Advanced"-tab is equally configured|
|dataExchangeLimit|500|The limit of exportable elements is set to 500 but can be adjusted|
|datetimeFormat|undefined|Allows to define custom display formats/notations for date/time values|
|defaultLinkAction|undefined|link action by clicking on any displayed identity|
|enableDataExchange|false|if set to true, it is possible to import data|
|enableRemoveAll|false|Allows all elements of the identity list to be deleted|
|exportAllPages|false|if set to true, the whole Identity List will be exported|
|exportAttributes|DisplayName|Specify any attributes which will be exported|
|exportHeader|false|If Export header is enabled headers will be exported to the clipboard as well as data using the specified Separator sequence|
|exportMaxCount|5000|Maximum number of elements that can be exported|
|exportSeparator|'\|'|For the export, it is possible to specify the separator-char|
|exportState|enabled: false, stateLocked: 'locked', stateUnlocked: 'editable',|It is possible to specify which data is locked and which is editable via queries in the advanced tab. The result of these two queries is also visible when exporting, as the elements are marked whether they are locked or editable|
|exportToClipBoard|false|If Export to clipboard is enabled Export header and Separator can be specified|
|exportToExcel|false|If enabled the appropriate export function for results in this Identity-List will be displayed. All results including headers will be exported|
|exportToPDF|false|If enabled the appropriate export function for results in this Identity-List will be displayed. All results including headers will be exported|
|fontSize|12|The CSS-FontSize [pt] to be used for this Identity-List|
|fontWeight|300|The CSS-FontWeight (100 - 700) to be used for the Identity-List|
|idpConfig|new IdentityEditorConfig()|A new Editor within the Identity List is opened. In this case it is the Identity-Picker below the identity list.|
|idpConfig.isMultivalue|true|Specifies whether or not this text editor can store multiple values|
|idpConfig.objectType|this.objectType|Specifies the object type which ist displayed in the Identity Picker below the Identity List|
|linkActions|'native', 'sideView', 'navigate'|Defines the possible link actions after selecting an element|
|navigationKey|undefined|Defines where to navigate with the linkAction|
|objectType|Person|Specifies the object type as stored in MIM for items to be handled by this Identity-List|
|pageButton|true|If enabled the paging buttons (previous/next/page selection) are displayed at the bottom left of the Identity-List.|
|pageCountNumber|3|defines how many page numbers are displayed in the identity list before navigating through the list with the "Next" buttons|
|pageInfo|true|If enabled paging information like (1 –n /m) is displayed at the bottom right of the Identity-List|
|pageSize|5|shows how many objects can be displayed on one page|
|pageType|numeric|Allowed values: numeric and input|
|queryEditableItems|undefined|Elements can be queried from MIM Portal using this XPath-Query in order to retrieve one to N result objects|
|removeMemberConfirmation|true|To remove a member from the result list, you have to confirm your selction|
|resizable|true|Specifies, that the table is dynamically adjusted according to the elements that need to be displayed|
|resourceType|Person|Object Type which gets display in Identity List form|
|scrollHeight|0|In UI it is not editable.|
|scrollMode|basic|Allowed values: basic and virtual|
|selectable|true|if set to true, single elements of this list can be selected|
|selectBoxWidth|45|this value defines the width of the select box which is displayed before the name/first attribute of the element in the list|
|selectMode|multiple|If set to multiple it is possible to select more than one single element of the list. You can select several entries|
|sortable|true|if set to true, the display results are sorted alphabetically|
|sortMode|single|sortMode is hidden in UI Configuration of this editor. There are two sortModes - single and multiple. Single means that you can only sort by a single attribute and multiple means that you can sort by several attributes.|
|tableHeight|300|Specifies the height for this Identity-List|



# Configuration in UI

![image.png](/img/image-22c686cf-467a-4cc2-b8c1-a1865ff60794.png)
![image.png](/img/image-351e5c36-e38f-4134-a982-cb773157206d.png)
![image.png](/img/image-f6ad402d-208b-4ac0-b1a0-382d6da17287.png)
![image.png](/img/image-36470f18-babc-4a4f-a196-e18f977fe36b.png)
![image.png](/img/image-e24affa9-0813-4aed-a3dd-57e34d420458.png)
![]()

# Event handler

## onImoprtData()
Triggers if more elements are imported

## onExportData()
Triggers if more elements are exported

## onExportToClipboard()
Triggers if the functionality "Export to Clipboard" is used

## onDoubleClick()
Triggers if the value of the identity editor has been double-clicked

## onAddIdentities()
triggers if identities are added to the List

## onRemoveIdentities()
triggers if identities are removed from the List

## onRemoveAll()
triggers if all identities are removed from the List
