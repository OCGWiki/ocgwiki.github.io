---
layout: docs

title: Global Configuration
#desription: <add description if needed>
filename: Global-configuration.md
permalink: /gobalconfig/

nav_order: 40
has_children: true
status: in progress
#parent: <add parent if is child>
toc: true
---

{% include toc.md %}




Global configurations are json files, which are hosted on the sever and loaded into the IDABUS Identity Portal at the beginning of the initialisation progress.

There are two types of global configurations:
- Configuration files
- Language files

# Configuration files

Configuration files are located as json files under **/assets/config**. The settings in the configuration files determine how the user interface should work and appear like. They are usually settings, that should not be changed very often.

## Environment dependent

Configuration files are environment dependent. According to the targeting system in the compile time, different files should be used:

- config.dev.json - built for development environment, with the CLI command `ng build`
- config.test.json - built for test environment, with the CLI command `ng build --c=test`
- config.prod.json - built for production environment, with the CLI command `ng build --prod`

## Overriding

Settings in the configuration files can be overridden by an additional custom files located under **/app/customisation/assets/config**. Depends on the target system, they are:

- customConfig.dev.json
- customConfig.test.json
- customConfig.prod.json

The overriding can only be done on the top level properties, for example:

To override the `unitCount` property in `breadCrumb`, the entire `breadCrumb` object should be overridden, not only the `unitCount` property
```
  "breadCrumb": {
    "unitLength": 20,
    "unitCount": 5
  }
```
This is wrong, the other properties will be missing:
```
  "breadCrumb": {
    "unitLength": 50,
  }
```
This is right
```
  "breadCrumb": {
    "unitLength": 50,
    "unitCount": 5
  }
```

# Language files

Settings in language files are key-value-pairs to define language translations. They are located under **/assets/translate**

## Core vs. Shared

- Core language files are used in core modules of the IDABUS Identity Portal (e.g. Identity-Picker, XPath-Builder etc.)
- Shared language files are used in out-of-box modules of the IDABUS Identity Portal (e.g. Dashboard, Advanced-Search etc.)

## Culture Codes

Here is a list of [supported culture codes](https://learn.microsoft.com/en-us/bingmaps/rest-services/common-parameters-and-types/supported-culture-codes)

## Overriding

Language files can be overridden by files located under **/app/customisation/assets/translate**
