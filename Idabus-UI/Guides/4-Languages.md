---
layout: docs

title: Languages
description:
filename: 4-Languages.md
permalink: /guides/languages/

nav_order: 4
status: in progress
parent: Guides
toc: true
---

# Scenario

The IDABUS® UI supports multi-language capabilities. By default IDABUS® UI is shipped with the following three languages:

- English _(en-US)_
- German _(de-DE)_
- Chinese _(zh-CN)_

The default language after shipping is English (en-US) and can be changed at the following places:

- Initial-Button (top right):
![image.png](/.attachments/image-5f88373f-5d80-40bf-b71b-12955c8c36f0.png)
- Settings > Personal settings > Language:
![image.png](/.attachments/image-ba9b495f-6eaf-4804-8f9e-529d4ba7db19.png)

# Configuration
Languages can be modified, added, removed and enabled or disabled. The key/values for these languages are stored in JSON-files within the following folder:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\translate`

The folder above can contain customized languages files and/or keys. Also, there are some Core-Translation key/value-pairs available at:
`C:\inetpub\Oxford Computer Group\OCG UI\portal\assets\translate`
_<span style="color: red;">It is highly recommanded to NOT change any values within the CORE!</span> - just for reading purposes._

# Parameters
| Key | Description | Values |
|--|--|--|
| code | This array stores a collection of strings specifiying the codepage for this language.<br/><br/>Example: `["fr-FR", "fr"]` | string[] |
| label | <span style="color: red;">???</span> | string |
| route | The filename abbreviation for this language.<br/><br/>For instance, French should be added as language we need to provide a JSON-file containing the french translation key/values stored as `fr.json` So the appropriate route should be configured as `"fr"`.| string |
| culture | <span style="color: red;">???</span> | string |
| enabled | Disabled languages are not available to be selected from the UI. Only enabled languages are present. | true/false |
| icon | Specifies the relative path to any picture representing the language (e.g, flags).<br/><br/>Example: `"assets/img/french.png"` | relative path |
