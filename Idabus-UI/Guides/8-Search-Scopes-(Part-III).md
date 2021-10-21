---
layout: docs

title: Search Scopes - Part 3
description:
filename: 8-Search-Scopes-(Part-III).md
permalink: /guides/searchScopes3/

nav_order: 8
status: in progress
parent: Guides
toc: true
---

# Scenario

In [Part II](/guides/searchScopes2/) we added a new Action Card for **Office Equipment** and configured it to display available office equipment on <span style="color: #8000FC">**"primaryAction"**</span> in the Resource-List below:

![image.png](/img/image-c3fe09de-7790-425f-90e1-888825036330.png)


The Resource-List displays only one column _**DisplayName**_. In the following steps we'll add more columns to this list.

# Configuration

Columns are configured in the custom configuration file within the <span style="color: #8000FC">**"searchScopes"**</span>-section:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\config\customConfig.dev.json`

There are two ways to configure columns, or let´s say to display more MIM attribute information for the displayed objects:

- using a simple array of strings only (<span style="color: #8000FC">**"attributes"**</span>), or
- using a complex array of Column-Definitions additionally (<span style="color: #8000FC">**"columns"**</span>)

## Simple Array of Strings

This configuration is done quickly by just providing an array of strings containing attribute names bound to the specified Object Type. All columns will be displayed with the same width and in the order provided in the array. To add _**Description**_ and _**Creator**_ information to the list change the <span style="color: #8000FC">**"attributes"**</span>-array in the <span style="color: #8000FC">**"searchScopes"**</span>-section for **EquipmentScope** to:<br>
`["DisplayName", "Description", "Creator"]`

Saving the file and refreshing the page will now show the following list:

![image.png](/img/image-6cbadc42-3e0a-4331-be17-3c5b215b94f4.png)

## Complex Array of Column-Definitions

This configuration is more precise to how columns should appear in the list and what options are available for the user. With this configuration we can define:

- if columns should be <span style="color: #8000FC">**"sortable"**</span>
- if columns should be <span style="color: #8000FC">**"filterable"**</span>
- a specific column <span style="color: #8000FC">**"width"**</span>
- status indicators using the <span style="color: #8000FC">**"showStatus"**</span> configuration

A Column-Definition looks like this:

![image.png](/img/image-38922511-5a2d-4ea4-bdad-e8533c08f47b.png)

# Parameters
## Search Scopes

| Key | Description | Values |
|--|--|--|
| attributes | A simple array of MIM attribute names bound to the current Object Type. This array is required. | string[] |
| columns | This array is optional and can contain more precise column definitions for the columns specified in <span style="color: #8000FC">**"attributes"**</span>. | Column-Definition[] |

## Column-Definition

| Key | Description | Values |
|--|--|--|
| field | Specifies the name of the attribute as specified in <span style="color: #8000FC">**"attributes"**</span> in order to apply the following column properties. | string |
| sortable | If `true` the user will be able to click the column header to toggle sorting (unsorted > asc > desc). | true/false |
| filterable | If `true` the user will be able to click a filter symbol in the column header to apply custom filtering on this column. To make filters work properly, the correct data type of the attribute needs o be specified in <span style="color: #8000FC">**"filter"**. | true/false |
| filter | Specifies the data type for this attribute/column if <span style="color: #8000FC">**"filterable"**</span> is set to `true`. If Text-Filtering is applied to a column containing numbers or dates, filtering won't work correctly! | text/ number/ boolean/ date |
| filterOperators | <span style="color:red">This is not needed anymore with v.4.7 <br><br> </span> If <span style="color: #8000FC">**"filterable"**</span> is set to `true` this property defines filter operators. <br> Available operators are: `"contains", "starts-with", "equals", etc.` <br>(_See advanced search filter for all possibilities_)| string[] |
| width | Specifies a dedicated width (px) for this column. | number |
| showStatus | Specifies whether or not this column should indicate a status based on the attribute value. | Status-Configuration |

## Status-Configuration

If the <span style="color: #8000FC">**"showStatus"**</span> property is present for a specific column, it is configured with the following parameters:

| Key | Description | Values |
|--|--|--|
| trueValue | If the Object´s attribute value matches the string specified, the status will be shown as true. otherwise it will be shown as false. | string |
| trueText | If the Object´s attribute value matches the string specified in <span style="color: #8000FC">**"trueValue"**</span> this string is shown as status.| localizable string |
| trueColor | Specifies the icon color for the _true_ status using a valid CSS Color code like:<br>`#00ff00` or `green` | CSS Color |
| falseText | If the Object´s attribute value does not match the string specified in <span style="color: #8000FC">**"trueValue"**</span> this string is shown as status. | localizable string |
| falseColor | Specifies the icon color for the _false_ status using a valid CSS Color code like:<br>`#ff0000` or `red` | CSS Color |

## Users-List

On a newly installed system a sample with the Status-Configuration can be seen in the Resource-List for users:

![image.png](/img/image-543460c4-3c38-40ce-b35a-06b9d74caaa1.png)
