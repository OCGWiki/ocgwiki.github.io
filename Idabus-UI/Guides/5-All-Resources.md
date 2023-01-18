---
layout: docs

title: All Resources
#description:
filename: 5-All-Resources.md
permalink: /guides/allResources/

nav_order: 5
status: in progress
parent: Guides
toc: true
---

{% include toc.md %}


# Scenario

The All Resources view is separated in chapters (e.g, managedResources, processes, cloudResources, etc.) containing 0 to _**n**_ items/Action Card(s):

![image.png](/img/image-ecc9dd54-2960-440e-aea3-2223465be5e8.png)

Chapters do have a localizable name and a collection of items defining their Action Card(s). Chapters and Action Cards can be added, removed, modified, enabled or disabled via the following JSON file:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\config\customConfig.dev.json`

## Action Card(s)

Action Card(s) are defined as followed:

![image.png](/img/image-0ad3b057-2849-444c-a90e-132554faf06f.png)

# Parameters
## Chapter(s)

| Key | Description | Values |
|-----|-------------|--------|
| name | Specifies the caption for this chapter. | localizable string |
| enabled | If disabled the whole chapter will be hidden in the frontend.<br> If enabled the Action Card(s) within this chapter are getting rendered. | true/false |
| items | The collection of Action Cards within this chapter. | [...] |

## Action Card

| Key | Description | Values |
|-----|-------------|--------|
| name | Specifies a name for this Action Card. | string |
| permissionSets | An array of MIM Set names. If the currently logged in user is a member of one of these sets they are permitted to **see** this Action Card the existing resource objects by clicking on the icon (<span style="color: #8000FC">**"primaryAction"**</span>).<br><br> If you want to hide this Action Card for all users, either set <span style="color: #8000FC">**"enabled"**</span>to false or set this property to `["!n.a.!"]`. "!n.a.!" is a non-existing set in MIM which the user cannot be a member of and therefore is not permitted to see this Action Card.| string[] |
| actionSets | An array of MIM Set names. If the currently logged in user is a member of one of these sets they are permitted to **use** this Action Card in order to create new resources by clicking on the plus-sign (<span style="color: #8000FC">**"secondaryAction"**</span>).<br><br>Like above, you can set this property to `["!n.a.!"]`, so no one can use the action card.| string[] |
| title | Specifies a title for this Action Card.| localizable string |
| description | Specifies a description for this Action Card. | localizable string |
| primaryIcon | Any [Google Material Icon](https://fonts.google.com/icons?style=baseline). | string |
| primaryAction | Specifies a [search scope](/guides/searchScopes2/) to be routed to when clicking on the <span style="color: #8000FC">**"primaryIcon"**</span>.| string |
| secondaryAction | The name of the wizard that will be called when you click the plus sign.. | string |
| enabled | If _disabled_, the Action Card will be hidden in the UI.<br>If _enabled_ the Action Card will be rendered as far as the appropriate permissionSets and actionSets properties are sattisfied. | true/false |
