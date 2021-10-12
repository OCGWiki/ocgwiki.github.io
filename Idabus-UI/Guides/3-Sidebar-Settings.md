---
layout: docs

title: Sidebar Settings
description:
filename: 3-Sidebar-Settings.md
permalink: /guides/sidebarSettings/

nav_order: 3
status: in progress
parent: Guides
toc: true
---

# Scenario

The sidebar is available in two modes (when being expanded):
- Floating _(overlapping)_
- Unfloating _(side-by-side)_

![image.png](/img/image-acc4fc37-42ae-486a-9c4b-570bab793c36.png)

The sidebar contains the following elements (top to bottom):
- Logo-Image(s) (small and big)
- Expand/Collapse-Button
- Configurable Routes (Dashboard, Advanced Search, etc.)
- Version-Information:
  - **UI version**: Can be adapted whenever you make an individual UI customization _(shipped as 1.3.0)_
  - **Core version**: Internal Core-Build-Version from OCG _(shipped as 4.x)_
  - **Version build**: Internal OCG versioning _(shipped as 002)_
  - **Service version**: Version of the OCG DataService connected via <span style="color: #8000FC">**"dataServiceUrl"**</span> _(shipped as 4.3.1)_

# Configuration
The sidebar settings are stored and configurable in the following file
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\config\customConfig.dev.json`
and following sections:

- <span style="color: #8000FC">**"images"**</span>
- <span style="color: #8000FC">**"sidebarSettings"**</span>
- <span style="color: #8000FC">**"sidebarItems"**</span>

# Parameters
## Images

| Key | Description | Values |
|-----|-------------|--------|
| logoSplash | A relative path to an image file that is accessible within the customization folder and shown on the splash screen of the IDABUS® UI:<br/>`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\`<br/><br/>Example: `app/customization/assets/img/idabuslogosplash.png`<br/><br/>If the `img` folder is not yet present, please create it. | relative path |
| logoLarge | A relative path to an image file that is accessible within the customization folder and shown in the sidebar as large logo:<br/>`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\`<br/><br/>Example: `app/customization/assets/img/idabuslogo.png`<br/><br/>If the `img` folder is not yet present, please create it. | relative path |
| logoSmall | A relative path to an image file that is accessible within the customization folder and shown in the sidebar as small logo:<br/>`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\`<br/><br/>Example: `app/customization/assets/img/idabusfavicon.png`<br/><br/>If the `img` folder is not yet present, please create it. | relative path |

## Sidebar-Settings

| Key | Description | Values |
|-----|-------------|--------|
| backColor | A CSS-color code specifying the background color of the sidebar. | CSS Color |
| frontColor | A CSS-color code specifying the foreground/text color of the sidebar. | CSS Color |
| iconColor | A CSS-color code specifying an icon color for the sidebar. | CSS Color |

## Sidebar-Items

| Key | Description | Values |
|-----|-------------|--------|
| name | Specifies a name for this element. | string |
| path | Specifies the target route to be launched when the user clicks on the sidebar element. <span style="color: red">_(Advanced Training required)_</span> | Route|
| title | A translatable string that is shown as tooltip for this sidebar element. | translatable string|
| icon | Specifies the [Google Material Icon](https://fonts.google.com/icons?style=baseline) to be used for this sidebar item. | string |
| enabled | If false the sidebar element will be hidden. | true/false |
