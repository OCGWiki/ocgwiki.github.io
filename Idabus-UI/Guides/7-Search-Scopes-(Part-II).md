---
layout: docs

title: Search Scopes - Part 2
#description:
filename: 7-Search-Scopes-(Part-II).md
permalink: /guides/searchScopes2/

nav_order: 7
status: in progress
parent: Guides
toc: true
---

{% include toc.md %}

# Scenario

**Search Scopes** are not only required in order to perform searches but also to define link targets for your specified Action Cards (configured in the <span style="color: #8000FC">**"allResources"**</span>-section).

Let´s assume we have added a new Action Card for **"Equipment"** to the [All Resources View](/guides/allResources/):

![image.png](/img/image-4e0b7433-0911-4ec4-b94d-98f6950c3f0c.png)

The configuration for the equipment card looks as followed:

![image.png](/img/image-14e258ca-1346-40ff-b08a-55159a5dfde8.png)

## PrimaryAction

The <span style="color: #8000FC">**"primaryAction"**</span> specifies a search scope to be routed to when clicking on the <span style="color: #8000FC">**"primaryIcon"**</span>. As a user we expect to see a list of available **Equipment-Objects** to be displayed after clicking on the printer icon but effectively get the following:

![image.png](/img/image-e3afd976-3817-4a06-a0c2-184ca7c90c42.png)

The <span style="color: red;">No configuration was found</span> message appears because no available search scope named **EquipmentScope** was found in the configuration file. So let´s define this missing configuration by adding the following key/values to the search scopes:

![image.png](/img/image-23f8e409-7e76-45b4-b335-a15eb5846a5c.png)

Now, doing a Page-Refresh will show the expected overview/list of Office Equipment:

![image.png](/img/image-c3fe09de-7790-425f-90e1-888825036330.png)

# Configuration

<span style="color: #8000FC">**"searchScopes"**</span> can be modified, added, removed and enabled or disabled in the custom configuration file:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\config\customConfig.dev.json`

# Parameters

## Search Scopes

| Key | Description | Values |
|-----|-------------|--------|
| name | This is the mapping name to the target defined as <span style="color: #8000FC">**"primaryAction"**</span>. <br><br> In this example: `EquipmentScope` | string |
| type | Specifies the Object Type as defined in the MIM Portal. <br><br> In this example: `Equipment` | string |
| text | A localizable string that is shown to the user to identify this scope. <br><br> In this example we use a single language system where no localization is required, so the instant string is defined as: `Office Equipment` | localizable string |
| enabled | Specifies if this scope should be displayed in the **"Search all resources"**-results. <br><br> In this example we only want to use the search scope as link target and do not want it to appear in the **"Search all resources"**-box, so we set it to:<br>`false`| true/false |
| typeQuery | This is the most critical parameter as it defines the query for the list of Office Equipment to be loaded/displayed when the <span style="color: #8000FC">**"primaryAction"**</span> is triggered. <br><br> In this example:  We want all the office equipment to be displayed without any pre-filters, so it is defined as: `/Equipment`| XPath |
| attributes | This array defines the attribute names of the target Object (Equipment) displayed in the list. <br><br> In this example we only chose one attribute: `["DisplayName"]` <br> (_More will be set in [Part III](/OCG-UI/How-To/Tutorials/8-Search-Scopes-\(Part-III\))_)| string[] | 
