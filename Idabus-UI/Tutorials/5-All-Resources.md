#Scenario

The All Resources view is separated in chapters (e.g, managedResources, processes, cloudResources, etc.) containing 0 to _**n**_ items/Action Card(s):

![image.png](/.attachments/image-4d680de3-c150-4e12-9b65-63c2f2c4da16.png)

Chapters do have a translatable name and a collection of items defining their Action Card(s). Chapters and Action Cards can be added, removed, modified, enabled or disabled via the following JSON file:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\config\customConfig.dev.json`

## Action Card(s)

Action Card(s) are defined as followed:

![image.png](/.attachments/image-55b7b32e-0b09-4b76-8efc-3195979b43cb.png)

# Parameters
## Chapter(s)

| Key | Description | Values |
|--|--|--|
| name | Specifies the caption for this chapter. | translatable string |
| enabled | If disabled the whole chapter will be hidden in the frontend.<br/>If enabled the Action Card(s) within this chapter are getting rendered. | true/false |
| items | The collection of Action Cards within this chapter. | [...] |

## Action Card

| Key | Description | Values |
|--|--|--|
| name | Specifies a name for this Action Card. | string |
| permissionSets | An array of MIM Set names. If the concurrent logged in user is a member of one of these sets she/he is permitted to **see** this Action Card in order to see existing resources by clicking on the icon (<span style="color: #8000FC">**"primaryAction"**</span>).<br/><br/>If you want to hide this Action Card in general for all users either set <span style="color: #8000FC">**"enabled"**</span>to false or set this property to `["!n.a.!"]`. Since "!n.a.!" is a non-existing set in MIM the concurrent user cannot be a member of it and therefore is not permitted to see this Action Card.| string[] |
| actionSets | An array of MIM Set names. If the concurrent logged in user is a member of one of these sets she/he is permitted to **use** this Action Card in order to create new resources by clicking on the plus-sign (<span style="color: #8000FC">**"secondaryAction"**</span>).<br/><br/>If you want to hide this Action Card in general for all users either set <span style="color: #8000FC">**"enabled"**</span>to false or set this property to `["!n.a.!"]`. Since "!n.a.!" is a non-existing set in MIM the concurrent user cannot be a member of it and therefore is not permitted to see this Action Card.| string[] |
| title | Specifies a title for this Action Card.| translatable string |
| description | Specifies a description for this Action Card. | translatable string |
| primaryIcon | Any [Google Material Icon](https://fonts.google.com/icons?style=baseline). | string |
| primaryAction | Specifies a search scope to be routed to when clicking on the <span style="color: #8000FC">**"primaryIcon"**</span>.| string |
| secondaryAction | The name of this wizard to be called when clicking on the plus-sign. | string |
| enabled | If disabled the Action Card will be hidden in the frontend.<br/>If enabled the Action Card will be rendered as far as the appropriate permissionSets and actionSets properties are sattisfied. | true/false |