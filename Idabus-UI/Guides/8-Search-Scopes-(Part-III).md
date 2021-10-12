---
layout: docs

title: Search Scopes - Part 3
description:
filename: 7-Search-Scopes-(Part-III).md
permalink: /guides/searchScopes3/

nav_order: 7
status: in progress
parent: Guides
toc: true
---

# Scenario

In the last [chapter](https://oxcoteam.visualstudio.com/OCG%20UI/_wiki/wikis/OCG-UI.wiki/735/7-Search-Scopes-(Part-II)) we added a new Action Card for **Office Equipment** and configured it to display available office equipment on <span style="color: #8000FC">**"primaryAction"**</span> in the Resource-List below:

<IMG  src="https://oxcoteam.visualstudio.com/ced9e2ae-43cb-4ef0-a5f1-a2ae9538ed67/_apis/git/repositories/27b84974-5e85-464a-80c1-b37e3320b6bb/Items?path=/.attachments/image-c3fe09de-7790-425f-90e1-888825036330.png&amp;download=false&amp;resolveLfs=true&amp;%24format=octetStream&amp;api-version=5.0-preview.1&amp;sanitize=true&amp;versionDescriptor.version=wikiMaster" alt="image.png"/>
<br/><br/>

The Resource-List displays only one column _**DisplayName**_. In the following steps we'll add more columns to this list.

# Configuration

Columns are configured in the custom configuration file within the <span style="color: #8000FC">**"searchScopes"**</span>-section:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\config\customConfig.dev.json`

There are two ways to configure columns, or let´s say to display more MIM attribute information for the displayed objects:

- using a simple array of strings only (<span style="color: #8000FC">**"attributes"**</span>), or
- using a complex array of Column-Definitions additionally (<span style="color: #8000FC">**"columns"**</span>)

## Simple Array of Strings

This configuration is done quick and easy by just providing an array of strings containing attribute names bound to the specified Object Type. All columns will be displayed in same width and in their order provided in the array. To add _**Description**_ and _**Creator**_ information to the list change the <span style="color: #8000FC">**"attributes"**</span>-array in the <span style="color: #8000FC">**"searchScopes"**</span>-section for **EquipmentScope** to:<br/>
`["DisplayName", "Description", "Creator"]`

Saving the file and refreshing the page will now show the following list:

![image.png](/img/image-cab9de39-f426-4661-9a49-fac5d153a25f.png)

## Complex Array of Column-Definitions

This configuration is more precise to how columns should appear in the list and what options are available for the user. With this configuration we can define:

- if columns should be <span style="color: #8000FC">**"sortable"**</span>
- if columns should be <span style="color: #8000FC">**"filterable"**</span>
- a specific column <span style="color: #8000FC">**"width"**</span>
- status indicators using the <span style="color: #8000FC">**"showStatus"**</span> configuration

A Column-Definition looks like:

![image.png](/img/image-38922511-5a2d-4ea4-bdad-e8533c08f47b.png)

# Parameters
## Search Scopes
| Key | Description | Values |
|--|--|--|
| attributes | A simple array of MIM attribute names bound to the concurrent Object Type. This array is required. | string[] |
| columns | This array is optional and can contain more precise column definitions for the columns specified in <span style="color: #8000FC">**"attributes"**</span>. | Column-Definition[] |

## Column-Definition
| Key | Description | Values |
|--|--|--|
| field | Specifies the name of the attribute as specified in <span style="color: #8000FC">**"attributes"**</span> in order to apply the following column properties. | string |
| sortable | If `true` the user will be able to click the column header to toggle sorting (unsorted > asc > desc). | true/false |
| filterable | If `true` the user will be able to click a filter symbol in the column header to apply custom filtering on this column. To make filters work properly please also concern the correct data type for this attribute via <span style="color: #8000FC">**"filter"**</span> and <span style="color: #8000FC">**"filterOperators"**</span>. | true/false |
| filter | Specifies the data type for this attribute/column if <span style="color: #8000FC">**"filterable"**</span> is set to `true`. If Text-Filtering is applied to a column containing numbers or dates, filtering won't work correctly! | Date/Number/Text |
| filterOperators | If <span style="color: #8000FC">**"filterable"**</span> is set to `true` this property defines filter operators. Available operators are:<br/> `"contains", "starts-with" `, <span style="color:red">etc.</span> | string[] |
| width | Specifies a dedicated width (px) for this column. | number |
| showStatus | Specifies whether or not this column should indicate some status icon based upon the attribute value. | Status-Configuration |

## Status-Configuration
If the <span style="color: #8000FC">**"showStatus"**</span> property is present for a specific column it is configured with the following parameters:
| Key | Description | Values |
|--|--|--|
| trueValue | If the Object´s attribute value matches the string specified, a status icon is displayed prior to the <span style="color: #8000FC">**"trueText"**</span>-property. | string |
| trueText | If the Object´s attribute value matches the string specified in <span style="color: #8000FC">**"trueValue"**</span> this string will be applied as the attributes value instead, otherwise <span style="color: #8000FC">**"falseText"**</span> is displayed. | translatable string |
| trueColor | Specifies the icon color if <span style="color: #8000FC">**"trueValue"**</span> matches using a valid CSS Color code like:<br/>`#00ff00` or `green` | CSS Color |
| falseText | If the Object´s attribute value does not match the string specified in <span style="color: #8000FC">**"trueValue"**</span> this string will be applied as the attributes value instead, otherwise <span style="color: #8000FC">**"trueText"**</span> is displayed. | translatable string |
| falseColor | Specifies the icon color if <span style="color: #8000FC">**"trueValue"**</span> does not match using a valid CSS Color code like:<br/>`#00ff00` or `green` | CSS Color |

## Users-List
On a newly installed system a sample with the Status-Configuration can be seen in the Resource-List for users:

![image.png](/img/image-543460c4-3c38-40ce-b35a-06b9d74caaa1.png)
