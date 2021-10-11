---
layout: docs

title: System Choice
description:
filename: 1-System-Choice.md
permalink: /guides/systemChoice/

nav_order: 3
status: in progress
toc: true
---

# Scenario:

When launching the IDABUS® UI web page for the first time, you will see the **System-Choice**. After shipping the dialog contains of three options by default:
- Contoso Dev _(meant to be an on-Premise system)_
- Contoso VM _(meant to be an on-Premise system)_
- OCG DE Demo _(meant to be a Cloud system)_

![image.png](/.attachments/image-a10da482-9f75-401d-b51b-27eb310ce659.png)
To select a system click on the right-arrow next to it.

# Configuration:
The System-Choice can be configured in the <span style="color: #8000FC">**"systems"**</span> key within the following JSON file:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\config\customConfig.dev.json`
<br />

If <span style="color: #8000FC">**"systems"**</span> does not yet exist in this file best practice is to copy it from the following file:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\assets\config\config.dev.json`

![image.png](/.attachments/image-67918518-a557-4308-bb37-947807f0b792.png)

# Parameters
## Systems

 Key | Description | Values
 ---|---|---
 enabled | If enabled the following array of items will be presented in the System-Choice dialog.<br/><br/>If disabled no System-Choice is presented at all. | true/false
 items | Collection of System-Objects. | [...]
<br/>

## System/Item
| Key | Description | Values |
|--|--|--|
| name | Just an identifier for this System-Object. | string |
| displayName | Specifies the title of the system. | string |
| type | cloud = The <span style="color: #8000FC">**"msalSettings"**</span>from the configuration file are taken to authenticate users and access data.<br/><br/>onPrem = The <span style="color: #8000FC">**"dataServiceUrl"**</span> from the configuration file is taken to authenticate users and access data. | cloud/onPrem |
| description | Specifies a translatable description that will be shown below the title. | translatable string |
| icon | Any [Google Material Icon](https://fonts.google.com/icons?style=baseline) | string |
| enabled | A way to enable/disable this system connection. | true/false |
| config | Can contain any configuration from this file except the systems-setting itself in order to overwrite system-specific values. | {} |
