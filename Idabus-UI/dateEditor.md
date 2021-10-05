---
layout: docs

title: Date Editor
description: This is the IDABUS UI Installation Guide
filename: dateEditor.md
permalink: /dateEditor/

nav_order: 7
parent: Editors
status: in progress
toc: true
---

# Configuration

|Property name| Default value | Annotation |
|--|--|--|
|configMaxDate|null|datepicker for maxDate value|
|configMinDate|null|datepicker for minDate value|
|dateFormat|undefined|format of the date value|
|maxDate|null|static maxDate value to be used as maxDate|
|minDate|null|static minDate value to be used as minDate|
|queryMaxDate|null|expression formula for calculating maxDate|
|queryMinDate|null|expression formula for calculating minDate|
|showNavigation|true|set to true to see sidebar on the calendar|
|showTime|false|if enabled the editor displays a time portion additionally to the date|
|showWeekNumber|false|if enabled show the number of the week in a year|
|timeFormat|false|format of the time value|
|useMaxDate|false|set to true to specify maximum date|
|useMinDate|false|set to true to specify minimum date|


# Configuration in UI

![image.png](/img/image-8a32a199-3288-4843-93d1-baba1a2371a0.png)
![image.png](/img/image-1b44de62-ee5c-46d5-8807-8bb502d80db0.png)

# Event handler

## onFocuse()

Triggered if the date editor get focus

## onChange()

Triggered if the value of the date editor has been changed
