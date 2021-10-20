---
layout: docs

title: Localization / Languages
description:
filename: 4-Languages.md
permalink: /guides/languages/

nav_order: 4
status: in progress
parent: Guides
toc: true
---

# Scenario

The IDABUS® UI supports multi-language capabilities. Out of the box it is shipped with the following three languages:

- English _(en-US)_
- German _(de-DE)_
- Chinese _(zh-CN)_

At the first login, the UI sets the language to the default language of the browser if it is among the supported languages (see Configuration above). If the browser uses an unsupported language, the UI fall back to the default language English (en-US/en).

A user can change their language settings individually in the following places:

 - Initials-Button (top right):

![image.png](/img/image-5f88373f-5d80-40bf-b71b-12955c8c36f0.png)

 - Settings > Personal settings > Language:

![image.png](/img/image-ba9b495f-6eaf-4804-8f9e-529d4ba7db19.png)

# Configuration

Languages can be modified, added, removed, enabled and disabled. The keys/values for these languages are stored in JSON-files within the following folder:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\translate` <br>
_(Note in a newly installed instance the files would be empty)_

The folder above can contain customized languages files and/or keys. The Core-Translation key/value-pairs are available at:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\assets\translate` <br>
_<span style="color: red;">It is highly recommanded to NOT change any values within the CORE!</span> - use it as example and, if needed, overwrite any key/values in the customization JSON files only._

# Parameters

| Key | Description | Values |
|-----|-------------|--------|
| code |This array stores a collection of strings that are compared to the language settings of the user's browser. If the browsers culture code matches any of these, they will use this language (if the user has not changed the language as described above)<br><br>Example: `["fr-FR", "fr"]` | string[] |
| label | The label of the language <br><br> Example: `Français` | string |
| route | The abbreviation of the file name for that language.<br><br>For example, if French is to be added as a language, we need to provide a JSON file containing the French translation keys/values stored as "fr.json".| string |
| culture | The culture code for the language <br><br> Example: `fr-FR` | string |
| enabled | Disabled languages are not available to be selected from the UI. Only enabled languages are present. | true/false |
| icon | Specifies the relative path to any picture representing the language (e.g, flags).<br><br>Example: `"assets/img/french.png"` | relative path |

# Additional Recommendations

1. Try not to delete English from your list of supported languages, as it's the default fallback language. Instead, disable it, so it can't be chosen by users.
