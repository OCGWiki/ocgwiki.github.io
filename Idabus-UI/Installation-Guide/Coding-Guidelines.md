---
layout: docs

title: Coding Guidelines
#desription: <add description if needed>
filename: Coding-Guidelines.md
permalink: /portal-installation/establishDevEnvironment/codingguidelines/

nav_order: 10
status: in progress
parent: Establish Development Environment
grand_parent: Portal Installation
toc: true
---

{% include toc.md %}

**Extensions Installation**

Download extensions-0.0.1 from MIM UI Teams and install them from VSIX file:

 ![Unbenannt.JPG](/img/Unbenannt-d9389013-cb2e-4436-bcab-67763d656d72.JPG)



**Set Pre-Commit Hook**

- If we _already_ have Dev Environment we should:
    1. Download Coding Guidelines File from Teams
    2. **Copy** .prettierrc, package.json files in UI Customisation Project
    3. Execute **yarn** in UI Customisation Project
- If we are setting up _new_ Dev Environment we don't have to do the steps above - just dont forget to execute **yarn** in UI Customisation Project!


**Set Format OnSave**

Add these lines to setting.json:
`   "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.formatOnSave": true`

![image.png](/img/image-50edc667-50e5-40ef-abc3-8c3f22f2b4d2.png)
