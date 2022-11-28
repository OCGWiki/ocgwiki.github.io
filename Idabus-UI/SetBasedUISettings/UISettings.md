---
layout: docs

title: UI Settings
#description:
filename: UISettings.md
permalink: /uisettings/

nav_order: 50
status: in progress
has_children: true
toc: true
---

{% include toc.md %}



# Overview

OCG UI can be customised for different user groups (like HR, help desk, user administrator etc.).

The settings, as the result of the customisation, are saved in a Set object (so called UI Set). You can assign different UI Sets to different users, so that they have individual UI experience. They also have the same UI experience if they are in the same UI Set.

Users who have multiple UI Sets can switch between them and take a certain UI Set as their primary UI Set. The primary UI Set will be applied, after they have logged into the system.

The following diagram shows how UI Set works:

![set_based_ui_settings.png](/img/set_based_ui_settings-f3e6edf0-55cb-4f94-8e93-868140addca7.png)

1. User is Member of an UI Set - The UI Set is available for this user
2. UI Set is defined as primary UI Set on user - The UI Set is applied for this user, after he has logged into the system
3. UI Set is defined as one of the admin UI Sets on user - The UI Set can be customised by this user
4. No primary UI Set is defined on user - The base UI Set is applied for this user

# Normal UI Sets

Normal UI Sets are Set objects with attribute ocgObjectType = ui
They are available for users to choose from, who are defined as a member of them (through assignment or rule)
They can be defined as primary UI Set on user, so that they are applied after the user has logged in

# Base UI Set

Base UI Set is a Set object with attribtute ocgObjectType = uibase
There should be only one base UI Set in the entire environment. It is a backup for users, who have no available UI Sets or have no primary UI Set defined on them
Base UI Set should not be defined as primary UI Set on user. As a backup, it has always the lowest priority
