---
layout: docs

title: State Card
#desription: <add description if needed>
filename: 11a-State-Card.md
permalink: /guides/dashboard/stateCard/

nav_order: 1
status: in progress
parent: Dashboard
grand_parent: Guides
toc: false
---
# Scenario

The configuration for **State cards** can be seen in the following screenshot:

![image.png](/img/image-58ff4294-a15f-49a6-9186-fb786e900a66.png)

# Parameters

| Key | Description | Values |
|-----|-------------|--------|
| Icon text | Any [Google Material Icon](https://fonts.google.com/icons?style=baseline). | string |
| Title | Specifies a caption for this State card. | translatable string |
| Main text | Specifies the source for the main value of this State card. <br><br>In the screenshot above we use a **Query** to define a **query counter** by requesting `/Equipment` against the MIM Portal. The query result will be a single return value containing the total amount of all **Equipment**-Objects found in MIM. This variable/return value is now accessed via `{0}` and sent as counter to the State card. | translatable string/variable |
| Use theme color | If enabled the theme colors are used to present the State card.<br><br>If disabled the colors from this configuration dialog are used. | true/false |
| Query counter /attribute | If **Query counter** is selected any **Query** defined returns the total amount of objects found in MIM Portal matching the criteria.<br><br>If **Query attribute** is selected any **Query** defined returns the attribute value _(defined by **Attribute name**)_ of the first record found in MIM Portal matching the specified criteria. | Choice |
| Action | Specifies the name of a defined [**Search Scope**](/guides/searchScopes2/) to route to if a user clicks on this State card.<br><br>This could be `EquipmentScope` for instance. | Search Scope |
