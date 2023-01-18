---
layout: docs

title: System Settings
#desription: <add description if needed>
filename: System-settings.md
permalink: /gobalconfig/systemsettings/

nav_order: 40
status: in progress
parent:  Global Configuration
toc: true
---

{% include toc.md %}



# General

IDABUS Identity Portal can be used for connecting different systems or environments. It is possible, at the beginning of UI start to show a configurable system list to be connected to.

![images_systems.png](/img/images_systems-b3733ae6-1d5c-473b-8748-32bc13962e16.png)

# Settings overriding

All settings specified in the [configuration file](/gobalconfig/configfiles/) (except the MSAL settings for now), can be overridden in the config block of the individual system settings. This is also a [top level overriding](/gobalconfig/#Overriding)

# Authentication modes

There are 4 different supported authentication modes,
- mix - allows windows (NTLM / Kerberos) authentication and form authentication
- windows - allows only windows authentication (NTLM / Kerberos)
- basic - allows only form authentication
- azure - allows azure AD authentication

> - onPrem - obsoleted, equivalent to mix
> - cloud - obsoleted, equivalent to azure

# Properties

|Key|Type|Default|Description|
|--|--|--|--|
|enabled|boolean|false|enable / disable system selection|
|loginMode|mix &#124; windows &#124; basic|global login mode setting, can be overridden in the individual system settings|
|items.name|string||name of the system|
|items.displayName|string||display name of the system, localisable|
|items.description|string||description of the system, localisable|
|items.type|mix &#124; windows &#124; basic &#124; azure &#124; link|authentication type of the system|
|items.icon|string||icon of the system using [material icons](https://fonts.google.com/icons?icon.set=Material+Icons)
|items.enabled|boolean||show / hide the system|
|item.config|object||entry point to override settings|
