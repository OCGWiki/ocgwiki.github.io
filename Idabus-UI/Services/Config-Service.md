---
layout: docs

title: Config Services
#desription: <add description if needed>
filename: Config-Service.md
permalink: /services/config/

nav_order: 15
status: in progress
parent: Services
toc: true
---

{% include toc.md %}


## **load**  

**Description**:  loads configuration file for corresponding environment
**Parameters**: -
**Remark**: if there is no customConfig for corresponding environment, default configuration for that environment is goring to be loaded

## **getConfig**

**Description**:  gets value of the given key from configuration file
**Parameters**:
- **key**: string - key in configuration file
- **fallback**?: any - default value for the key if none found

**Example**: getConfig('intervalSmall', 300)

## **getConfigEx**

**Description**: gets value of the given path from configuration file
**Parameters**:
- **path**: string - path in configuration file
- **fallback**?: any - default value for the path if none found

**Example**: getConfigEx('images:logoSmall','assets/img/favicon.png')
**Remark**: this function returns any

## **getCulture**

**Description**: gets current language tag
**Parameters**:
- **route**: string- route as abbreviation of the language to route to
- **settingName** = 'supportedLanguages' - value of key in configuration file is supportedLanguages

## **patchConfig**

**Description**: patches project-specific configuration defaults
**Parameters**:
- **patch**: object
