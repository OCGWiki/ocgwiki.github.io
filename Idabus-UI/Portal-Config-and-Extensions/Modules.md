---
layout: docs

title: Modules
#description:
filename: Modules.md
permalink: /portal-config-and-extensions/modules/

nav_order: 5
status: in progress
parent: Portal Configuration and Extensions
toc: true
---

{% include toc.md %}



# Localization module
Loads translation files (in json format) into project and provides methods to implement translation.

Translation files should be named with its language route name, ex. **en.json** for english and **de.json** for german.

Language route name can be defined in configuration,
```js
  "supportedLanguages": [
    {
      "code": [
        "en-US",
        "en"
      ],
      "label": "English",
      "route": "en",
      "culture": "en-US",
      "enabled": true,
      "icon": "assets/img/united-states.png"
    },
    {
      "code": [
        "de-DE",
        "de"
      ],
      "label": "Deutsch",
      "route": "de",
      "culture": "de",
      "enabled": true,
      "icon": "assets/img/germany.png"
    }
  ]
```

## Loading order
- assets/translate/core/
localization resources for core components

- assets/translate/shared/
localization resources for shared components

- app/customisation/assets/translate/
localization resources for custom components

If a same translation (same translation key) is defined in multiple translation files, the translation in the later loaded file will overwrite the translation in the former loaded file.

For example, if key_greeting is defined for core components as well as for custom components, the translation for custom components will overwrite the translation for core components.

# Core module

Includes core components which can be reused for other components

# App module

Entrance of the UI, includes components implemented for MIM or IDABUS
> Font-Awesome icons can be loaded here

# Custom module

Provides interfaces to embed custom components into the app module
