---
layout: docs

title: Language Files
#desription: <add description if needed>
filename: Language-Files.md
permalink: /gobalconfig/languagefiles/

nav_order: 15
status: in progress
parent:  Global Configuration
toc: true
---

{% include toc.md %}



# File location

- Standard - /assets/translate
- Override - /app/customisation/assets/translate

> The settings in language files configured in IDABUS Identity Portal apply only for the user interface. Language packages for FIM / MIM or IDABUS Identity Engine are still need to be installed to show e.g. localised text defined in schema etc.

# Configure language resources

- Add the settings to the configuration file
- Add a json file with the same name as the route property defined in the settings

![language_resource.png](/img/language_resource-63fa00dc-a814-466f-8786-7912e732671b.png)

## Properties

|Property|Description|
|--|--|
|code|an array of accepted browser [culture codes](https://learn.microsoft.com/en-us/bingmaps/rest-services/common-parameters-and-types/supported-culture-codes), which should be mapped to the language resource|
|label|label of the language resource shown in the user interface|
|route|route name of the language resource, must match the language resource json file name|
|culture|the default culture name of the language resource|
|enabled|enable or disable the language resource in the user interface (disabled language cannot be chosen from)|
|icon|icon for the language resource shown in the user interface |
