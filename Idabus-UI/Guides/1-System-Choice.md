---
layout: docs

title: System Choice
#description:
filename: 1-System-Choice.md
permalink: /guides/systemChoice/

nav_order: 1
status: in progress
parent: Guides
toc: false
---

{% include toc.md %}

---

# Scenario

When launching the IDABUS® UI web page, the first dialog appearing is the **connection choice**, in the following referred to as **System-Choice**. Here you decide which instance you want to connect to. The  **System-Choice** can also be deactivated and the dialog will be skipped.

On a newly installed system it will offer the following three options by default:
- Contoso Dev _(meant to be an on-Premise system)_
- Contoso VM _(meant to be an on-Premise system)_
- OCG DE Demo _(meant to be a Cloud system)_

![image.png](/img/image-d24964cc-ddf0-4fa9-bd57-ec93a82c618b.png)
To select a system click on the right-arrow next to it.

# Configuration
The System-Choice can be configured in the <span style="color: #8000FC">**"systems"**</span> key within the following JSON file:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\config\customConfig.dev.json`
>_In older Versions the "Idabus UI" folder  might be called "OCG UI"_
<br>

If <span style="color: #8000FC">**"systems"**</span> does not yet exist in this file best practice is to copy it from the following file:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\assets\config\config.dev.json`

![image.png](/img/image-67918518-a557-4308-bb37-947807f0b792.png)


# Parameters
## Systems


Key | Description | Values
----------|----------|---------
enabled | If _enabled_ the following array of items will be presented in the System-Choice dialog. <br><br> If _disabled_ no System-Choice is presented at all and the dialog is skipped. This is the recommended setting, should you only have one system to connect to.| true/false
items | Collection of System-Objects to choose from in the connection selection. | [...]


## System/Item

Key | Description | Values
----|-------------|---------
name | An unique identifier for this System-Object. <br><br> _This key is mandatory_ | string
displayName | Specifies the system title that will be shown in the selection. | (localizable) string
type | cloud = The <span style="color: #8000FC"> **"msalSettings"**</span>from the configuration file are taken to authenticate users and access data.<br><br>onPrem = The <span style="color: #8000FC">**"dataServiceUrl"**</span> from the configuration file is taken to authenticate users and access data. <br><br> _This key is mandatory_| cloud/onPrem
description | Specifies a description that will be shown below the title. | (localizable) string
icon | Any [Google Material Icon](https://fonts.google.com/icons?style=baseline) | string
enabled | A way to enable/disable this system connection. Only enabled connections can be seen by the users.  | true/false
config | Can contain any configuration from the config itself in order to overwrite system-specific values. Only exceptions are <span style="color: #8000FC"> **"systems"**</span> and the <span style="color: #8000FC"> **"msalSettings"**</span> | {}

---

# Additional Recommendations

1. If you want the UI to connect to one system only, set <span style="color: #8000FC"> systems.enabled</span> to false. Then the whole <span style="color: #8000FC"> systems</span> block will be disregarded.
2. If you want to add a second system after setting up only one connection, you can just:
  2.1 Set <span style="color: #8000FC"> systems.enabled</span> to true
  2.2 Create an item for the already existing system with <span style="color: #8000FC"> config</span>: {}
  2.3 Create an item for the new connection and add anything you wish to change in its <span style="color: #8000FC"> config</span>, for example the <span style="color: #8000FC">dataServiceUrl</span>
