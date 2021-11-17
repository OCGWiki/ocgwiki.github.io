---
layout: docs

title: Detail Views
#description:
filename: 10-Detail-Views.md
permalink: /guides/detailViews/

nav_order: 10
status: in progress
parent: Guides
toc: true
---

{% include toc.md %}


# Scenario

A **Detail View** shows attribute information about a specific Object/Resource separated in three units named:

- **Detail View** _(always visible)_
- **Brand View** _(can be hidden or visible showing custom attributes)_
- **Structure View** _(can be hidden or visible showing a custom structure)_

The anatomy of a Detai View having all units enabled could look like:

![image.png](/img/image-a92b5c33-ab8c-4141-ba62-e50d206a8c4a.png)

## Detail View

This view shows an configurable [**Google Material Icon**](https://fonts.google.com/icons?style=baseline) followed by the **DisplayName** of the selected resource. Attributes can be configured and positioned in different **Tabs** for logical separation of information and/or human-readablity. The image above shows two tabs _**General**_ and _**Location**_ having the first one selected. The attributes configured (_**DisplayName**_ and _**Description**_) do show their concurrent value and can be modified by the user.

If attribute values are changed by the user the **Save**-Button will be enabled and needs to be pressed before leaving the view in order to store changed values in the MIM Portal.

The **Advanced view**-Button switches into advanced attributes view as available in the MIM Portal as well showing all attributes bound to the concurrent resource.

With the **Refresh**-Button the user can refresh the view in case attribute values were changed from somewhere else (manually by another user or automatically via workflow).
<br>

## Brand View

This view can be hidden or visible showing the generated initials (**MA**) and custom attributes for the selected resource. The **Initials** are build by using the first two letters of the **DisplayName**.
<br>

## Structure View

This view can be hidden or visible showing **Parent/Child-Relations** about the selected resource within a tree structure. This is useful to quickly see and access organizational unit information about the selected resource. 
<br>

# Configration

## Detail View

A detail view is usually accessed by clicking on a resource, found as search result, displayed as Grid-Entry or elsewhere within the IDABUS® UI showing a resource. For our **Equipment**-Sample from the previous chapters we might go the following way that ends up with <span style="color:red;">Oops... something went wrong</span>:

![image.png](/img/image-6f0bf18c-9062-423c-9c20-b5aeb907c7e9.png)

This happens because the IDABUS® UI is missing a configuration for this type of resource yet. Once configured and stored in the MIM database the detail view is available globally for all administrators and users. To create a new **Editing form** please follow the steps below:

![image.png](/img/image-df4cd186-61b2-4a3f-a1b1-4e565a0876e6.png)

Having the steps performed a user shoud now be routed to the **Equipment**-Detail View correctly when clicking on a resource of this type and see an empty/unconfigured view like in the first screenshot of this page except the Structure View.

The administrator can now start adding **Tabs** and/or **Attributes** to this detail view by:

1. Switch into **Edit-Mode** via clicking ![image.png](/img/image-50d61311-00a1-44bb-996f-f1a045244c0d.png) at the top right of the page.

2a. To add, delete or modify a **Tab** on the view click ![image.png](/img/image-0b6a6e4e-4ff7-4be8-bebc-d360cb30cf28.png). The following dialog opens:

![image.png](/img/image-3740506c-23e9-4e01-90b4-690848439682.png)

2b. To add a new **Attribute** to the view and concurrently selected **Tab** click ![image.png](/img/image-c0064dbc-083e-464a-adfc-7e1a8dee836d.png). The following dialog opens:

![image.png](/img/image-23e50beb-466c-4e0f-abcf-2e0fb838cc49.png)

The following **Control Types** are available:

- [**Textbox**](/Editors/textEditor) _(for Strings)_
- [**Checkbox**](/Editors/booleanEditor) _(for Booleans)_
- [**Select**](/Editors/selectEditor) _(can be DropDown or RadioButton)_
- [**Date**](/Editors/dateEditor) _(for Dates and/or Times)_
- [**Identity-Picker**](/Editors/identityEditor) _(for References)_
- [**Identity-List**](/Editors/identitiesEditor) _(for Memberships)_
- [**Button**](/Editors/buttonEditor) _(for custom Angular methods - [<span style="color: red;"><u>Advanced Training required!</u></span>](https://ocg.de/Trainings))_
- [**XPath-Editor**](/Editors/xPathEditor) _(for criteria-based Filters)_
- [**Separator**](/Editors/separatorEditor) _(for on-screen separation-purposes)_
- [**Frame**](/Editors/frameEditor) _(for custom Angular components - [<span style="color: red;"><u>Advanced Training required!</u></span>](https://ocg.de/Trainings))_
<br>

3\. Complete the operation by clicking the save icon ![image.png](/img/image-3fe151b9-b712-480d-9ea6-ce4082cd908a.png).
<br>

## Brand View & Structure View

The brand and structure view properties can be configured in the Settings-Area of the IDABUS® UI following these steps:

![image.png](/img/image-33cd7260-ad67-4242-a66c-f11dcb0ebd0f.png)
