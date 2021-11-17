---
layout: docs

title: Wizards
#description:
filename: 9-Wizards.md
permalink: /guides/wizards/

nav_order: 9
status: in progress
parent: Guides
toc: true
---

{% include toc.md %}


# Scenario

In the previous chapters about **Search Scopes** we defined a new Action Card for Office Equipment and configured the search scopes to show a list of available Office Equipment and related attributes information. Now we want to create a **Wizard** for our Office Equipment in order to add/create new Object Resources in MIM.

A wizard is defined as a target for the <span style="color: #8000FC">**"secondaryAction"**</span> of an Action Card and setup via IDABUS® UI Frontend-Capabilities. Our wizard to create new Office Equipment resources could look like this:

![image.png](/img/image-1ccccd36-7c00-4b5e-b372-ecbd90e7fdad.png)

and is displayed when the user clicks on the plus-icon of an Action Card in the [All Resources](/guides/allResources/) view. This actually attempts to find a wizard within the IDABUS® UI configuration with the name specified by <span style="color: #8000FC">**"secondaryAction"**</span>.

After all <span style="color: red;">required fields</span> are entered by the user, the **Create** button is no longer greyed out and the resource can be created in MIM when clicked.

With the <span style="color: #8000FC">**"navigateAfterCreation"**</span> option the user can control whether or not the IDABUS® UI should navigate to the [Detail View](/guides/detailViews/) of the newly created resource or stay on the current page. The user needs to click the **right** part of this switch before creating the resource to switch to the Detail View. The (_default_) **left** part keeps the IDABUS® UI at the current location. The _default_ can be pre-defined in the `customConfig.dev.json` file.

# Configuration

The wizard needs to be defined at two places:
- within the IDABUS® UI settings page that can be reached by clicking on the _**gear**_-icon in the sidebar:

![image.png](/img/image-9d4c25fa-c966-40aa-b162-86a25a252390.png)

- within the <span style="color: #8000FC">**"allResources"**</span> config-section for the **Equipment** Action Card  <br>`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\config\customConfig.dev.json`

(_Create the wizard in the UI first, then create the Equipment Action Card in the config and directly specify the wizards name as secondary action_)

After the wizard was created (as shown in the picture above) it can be configured with attributes, dependencies, requirements, conditions, etc. using best suited control to guarentee the data quaility you need. Except for the **Resource type** all other properties can be changed. The following controls for data types are available:

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

To add attributes to the wizard please follow the steps in the following image and don't forget to click **Save changes** when done:

![image.png](/img/image-abb1c1f1-3766-4b6a-8830-47259056a5e2.png)

The control for _**Display Name**_ can be configured or removed with the context menu that appears when clicking on the _**3-dots**_ icon at the right end of the control. The control can also be moved/positioned by holding down the mouse button on the _**3-bars**_ icon as indicated by step 4.

**Again**: Do not forget to **Save changes**!
