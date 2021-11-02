---
layout: docs

title: Text Editor
#description:
filename: textEditor.md
permalink: /editors/textEditor/

nav_order: 10
parent: Editors
status: in progress
---
{% include toc.md %}

# Configuration

|Property name| Default value | Annotation |
|--|--|--|
|autoComplete|false|can be set, if autocomplete is needed|
|autoCompleteOptions|[]|list of key/value pairs that we can use to auto complete editor value|
|isMultivalue|false|if enabled, text editor can have multipl values |
|isPassword|false|if enabled, text editor value has hidden value with dots instead of characters|
|maxLength|undefined|maximal number of charachters for text editor value|
|noPrefixIfEmpty|true|if enabled value of the prefix will not be saved as value of text editor if text editor is empty|
|prefix|''|specifies value that can be defined as prefix of text editor|
|rows|1|specifies the amount of lines to be displayed for this text editor|
|savePrefix|false|if enabled, value of text editor will be saved with prefix |

# Configuration in UI

![image.png](/img/image-7bc7e7eb-7e16-4f54-ac8f-fe9ef6a0b4ac.png)
![image.png](/img/image-86c70040-9d00-4c19-9a8d-9b52ff103825.png)

# Event handler

## onFocuse()

Triggered if the text editor get focus

## onChange()

Triggered if the value of the text editor has been changed

# Public method

## setAutoCompleteOptions(options: Observable<Array<{ text: string; value: string }>>)

Sets options for auto complete as array of key/value pairs
