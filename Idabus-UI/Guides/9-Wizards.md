---
layout: docs

title: Wizards
description:
filename: 9-Wizards.md
permalink: /guides/wizards/

nav_order: 9
status: in progress
parent: Guides
toc: true
---

# Scenario

In the previous chapters about **Search Scopes** we defined a new Action Card for Office Equipment and configured the search scopes to show a list of available Office Equipment and related attributes information. Now we want to create a **Wizard** for our Office Equipment in order to add/create new Object Resources in MIM.

A wizard is defined as a target for the <span style="color: #8000FC">**"secondaryAction"**</span> of an Action Card and setup via IDABUS® UI Frontend-Capabilities. Our wizard to create new Office Equipment resources could look like

![image.png](/img/image-1ccccd36-7c00-4b5e-b372-ecbd90e7fdad.png)

and is displayed screen-centered when the user clicks on the plus-icon of an Action Card in the [All Resources](/OCG-UI/How-To/Tutorials/5-All-Resources) view. This actually attempts to find a wizard within the IDABUS® UI configuration having the name specified by <span style="color: #8000FC">**"secondaryAction"**</span>.

After all <span style="color: red;">required fields</span> are entered by the user the **Create** button will be activated and the resource is being created in MIM if clicked.

With the <span style="color: #8000FC">**"navigateAfterCreation"**</span>-option the user can control whether or not the IDABUS® UI should navigate to the [Detail View](/OCG-UI/How-To/Tutorials/10-Detail-Views) of the newly created resource to show more detailed information about it. For this the user needs to activate the **right** portion of this switch before creating the resource. The **left** portion (_default_) keeps the IDABUS® UI at the concurrent location. The _default_ can be pre-defined in the `customConfig.dev.json` file.

# Configuration

The wizard needs to be defined at two places:
- within the <span style="color: #8000FC">**"allResources"**</span>-section for the **Equipment** Action Card in the configuration file:<br>`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\config\customConfig.dev.json`
- within the IDABUS® UI settings page that can be reached by clicking on the _**gear**_-icon in the sidebar:

![image.png](/img/image-9d4c25fa-c966-40aa-b162-86a25a252390.png)

After the wizard was created as shown in the picture above it can be configured with attributes, dependencies, requirements, conditions, etc. using the most appropriate control to guarentee the quaility of data as needed. Except the **Resource type** all other properties can be changed later. The following controls for data types are available:

- [**Textbox**](/OCG-UI/Editors/Text-Editor) _(for Strings)_
- [**Checkbox**](/OCG-UI/Editors/Boolean-Editor) _(for Booleans)_
- [**Select**](/OCG-UI/Editors/Select-Editor) _(can be DropDown or RadioButton)_
- [**Date**](/OCG-UI/Editors/Date-Editor) _(for Dates and/or Times)_
- [**Identity-Picker**](/OCG-UI/Editors/Identity-Editor) _(for References)_
- [**Identity-List**](/OCG-UI/Editors/Identities-Editor) _(for Memberships)_
- [**Button**](/OCG-UI/Editors/Button-Editor) _(for custom Angular methods - <span style="color: red;">Advanced Training required!</span>)_
- [**XPath-Editor**](/OCG-UI/Editors/XPath-Editor) _(for criteria-based Filters)_
- [**Separator**](/OCG-UI/Editors/Separator-Editor) _(for on-screen separation-purposes)_
- [**Frame**](/OCG-UI/Editors/Frame-Editor) _(for custom Angular components - <span style="color: red;">Advanced Training required!</span>)_
<br>

To add attributes to the wizard please follow the steps in the following image and a do not forget to click **Save changes** when done:

![image.png](/img/image-abb1c1f1-3766-4b6a-8830-47259056a5e2.png)

The control for _**Display Name**_ can be configured or removed with the context menu that appears when clicking on the _**3-dots**_ icon at the right end of the control. The control can also be moved/positioned by holding down the mouse button on the _**3-bars**_ icon as indicated by step 4.

**Again**: Do not forget to **Save changes**!
