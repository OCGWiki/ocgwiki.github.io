---
layout: docs

title: Sidebar Settings
#desription: <add description if needed>
filename: Sidebar-settings.md
permalink: /gobalconfig/sidebarsettings/

nav_order: 30
status: in progress
parent:  Global Configuration
toc: true
---

{% include toc.md %}



# Customize sidebar

![images_sidebar_settings.png](/img/images_sidebar_settings-a307c109-6aa4-4f04-8359-ded91c26b7cb.png)

# Properties

## floatingSidebar

If set to true, the sidebar, when expanded, will overlap the main view and thus takes no extra space.

## sidebarSettings

|Key|Type|Default|Description|
|--|--|--|--|
|backColor|string|white|background colour of the sidebar|
|frontColor|string|#3c4858|front colour of the sidebar|
|iconColor|string|#a9afbb|icon colour|

## sidebarItems

|Key|Type|Default|Description|
|--|--|--|--|
|name|string||sidebar item name, if set to "profile", the current user editing form will be displayed|
|path|string||sidebar item path|
|title|string||sidebar item title, localisable|
|icon|string||sidebar item icon using [material icons](https://fonts.google.com/icons?icon.set=Material+Icons)|
|enabled|boolean||show / hide sidebar item|

# Available sidebar items

|Path name|Description|
|--|--|--|--|
|home|navigate to dashboard|
|search|navigate to advanced search|
|* set name to profile and path to empty|navigate to profile page|
|resources|navigate to resources page|
|approvals|navigate to approval page|
|timemachine|navigate to object history page|
|reports|navigate to reporting page|
|requests|navigate to events page|
|settings|nagivate to settings page|
