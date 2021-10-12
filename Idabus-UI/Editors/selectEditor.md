---
layout: docs

title: Select Editor
#description: 
filename: selectEditor.md
permalink: /editors/selectEditor/

nav_order: 8
parent: Editors
status: in progress
toc: true
---
# Configuration

|Property name| Default value | Annotation |
|--|--|--|
|allowEmpty|true|choose if select editor can have empty value|
|configKey|undefined|specifies the name of the JSON-Configuration-Array that contains the key/value-collection of elements|
|controlType|combo|defines the select editor control type, allowed values are combo, radio and text|
|dataMode|static|specifies the type of data for select editor, allowed values are static, config and query|
|emptyText| '--' |specifies custom format for empty text|
|options|[]|list of options for select editor|
|query|undefined|XPath-Query for values in select editor|
|radioButtonLayout|row|defines the layout of radio butto, allowed values are row and column|
|radioButtonSpace|20|sets the space between each option|
|separator|undefined|character sequence to be used to split texts and values into element pieces in case the attribute´s raw data is separated|
|textAttribute|undefined|specifies the name of the attribute that contains the text for the element from the queried result objects|
|valueAttribute|undefined|specifies the name of the attribute that contains the value for the element from the queried result objects|



# Configuration in UI

![image.png](/img/image-da2f0407-1a14-4d62-8346-cce0ea9650c2.png)
![image.png](/img/image-9b282a28-1726-4b07-bc05-9af5cfb2bba8.png)
![image.png](/img/image-5253b6fa-b520-4f1d-9efc-11084e06ba32.png)
![image.png](/img/image-bfd7caef-24c5-4420-9bdd-22b4455db7da.png)

# Event handler

## onFocuse()

Triggered if the select editor get focus

## onChange()

Triggered if the value of the select editor has been changed
