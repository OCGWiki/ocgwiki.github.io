---
layout: docs

title: Placeholders
#desription: <add description if needed>
filename: Placeholders.md
permalink: /uisettings/placeholders/

nav_order: 30
status: in progress
parent: UI Settings
toc: true
---

{% include toc.md %}



# General

Placeholders are strings with special formats, which will be replaced with corresponding values when a xpath or a value expression evaluates its value in run time.

# Available placeholders

- **%SearchText%**
Used in xpath expressions, representing input text by user

- **[#LoginID]**
Used in xpath or value expressions, representing the resource ID of the login user

- **[#CurrentID]**
Used in xpath or value expressions, representing the resource ID of the current viewing resource (in editing form) or the current creating resource (in creation form)

- **[#<EditorName>]**
Used in xpath or value expressions, representing the value of the specified editor in a editing form or a creation form

- **{0}, {1} ...**
Used in [dashboard components](/uisettings//Dashboard-components), representing resolved values

- **[&<KeyName>]**
Used in [Html tile](/uisettings//Dashboard-components/Html-tile), representing the language resource of the specified key name

- **[#LoginUser/<AttributeName>]**
Used in [Html tile](/uisettings//Dashboard-components/Html-tile), representing the value of the specified attribute of the login user

- **[#UIConfigInfo]**
Used in [Html tile](/uisettings//Dashboard-components/Html-tile), representing the automatically generated configuration information

- **[#UIConfigColor]**
Used in [Html tile](/uisettings//Dashboard-components/Html-tile), representing the automatically generated configuration colour

- **today()**
Used in [Chart tile](/uisettings//Dashboard-components/Chart-tile), representing the current date time
