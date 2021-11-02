---
layout: docs

title: General Editor Settings
#description:
filename: generalEditorSettings.md
permalink: /editors/generalEditorSettings/

parent: Editors
nav_order: 1
status: in progress
---

{% include toc.md %}

# General editor configurations

|Property name| Default value | Annotation |
|--|--|--|
|accessAllowed|empty array|list of sets / xpath templates, whose member is allowed to access the editor, has lower priority to accessDenied|
|accessDenied|empty array|list of sets / xpath templates, whose member is denied to access the editor, has lower priority to accessExpression|
|accessExpression|undefined|javascript expression to define the access, returns true for allowed access and false for denied access|
|accessUsedFor|visibility|defines which kind of access the options accessAllowed, accessDenied and accessExpression apply for, can be switched between visibility and editability,|
| attributeName | undefined | the system name of the attribute whoes value should be represented |
|customDescription|undefined|custom description, which can overwrite the attribute description from schema|
|customDisplayName|undefined|custom display name, which can overwrite the attribute display name from schema|
| editMode | false | set to true to enable the edit mode |
|errorMsg|undefined|reserved for showing error message, if the editor has error|
|expression|undefined|javascript to define the attribute value dynamically|
|hasError|false|indicate if the editor has error|
|hideFromDOM|false|if set to true, hidden editors are removed from DOM, otherwise they still stay in the page and are accessible|
|hideIfNoAccess|true|if set to true, editors with no read access will be hidden automatically|
|initExpression|undefined|defines initial value of an editor, can be lookups (ex. [#DisplayName]) or javascript expression|
|readOnly|false|this setting can overwrite (only if set to true) the setting from schema|
|required|false|this setting can overwrite (only if set to true) the setting from schema|
|showDescription|true|shows description in the editor|
|showDisplayName|true|shows display name in the editor|
|showTooltip|true|shows system name as tooltip in the editor|
| units | 12 | represent the wide of the editor, divided in 12 units, setting the value to 12 means to use the whole wide |
|validation|undefined|regular expression, which defines how attribute value can be validated. if there is already validation definition from schema, the definition will be loaded automatically|

# Configuration in UI

**General tab**
![general_editor_settings_1.png](/img/general_editor_settings_1-4a584168-03d6-4f30-824c-e32b958c48de.png)

**Display tab**
![general_editor_settings_2.png](/img/general_editor_settings_2-2d0b8949-85f9-445c-a13a-2c3202d20cda.png)

# Inputs (Properties)

## config
Type: EditorConfig

The configuration object for the editor. It includes all the introduced entries in [General editor configurations](#General-editor-configurations)

## editorAttribute
Type: AttributeResource

The attribute to be shown in the editor. It includes all the attribute details defined as,
```js
export class AttributeResource {
  description?: string;
  displayName?: string;
  multivalued?: boolean;
  required?: boolean;
  stringRegex?: string;
  integerMinimum?: number;
  integerMaximum?: number;
  systemName?: string;
  dataType?: string;
  permissionHint?: string;
  value?: any;
  values?: any[];
  readonly?: boolean;
  isinternal?: boolean;
  multivalueReferenceOptions?: string;
  xPathPersistenceOptions?: string;

  constructor() {
    this.description = null;
    this.displayName = null;
    this.multivalued = false;
    this.required = false;
    this.stringRegex = null;
    this.integerMaximum = null;
    this.integerMinimum = null;
    this.systemName = null;
    this.dataType = 'string';
    this.permissionHint = '';
    this.value = '';
    this.values = [];
    // idabus only properties
    this.readonly = false;
    this.isinternal = false;
    this.multivalueReferenceOptions = null;
    this.xPathPersistenceOptions = null;
  }
}
```

## configMode
Type: boolean

Indicate configuration mode

## creationMode
Type: boolean

Indicate creation mode

## viewMode
Type: string

Indicate view mode, allowed values are tab or widget

## currentID
Type: string

The object id of the resource object

## currentType
Type: string

The object type of the resource object

## currentResource
Type: Resource

The resource object

## parameters
Type: { [name: string]: string } (dictionary)

Additional parameters can be passed to the editor

# Outputs (events)

## configChange

Will be triggered when the [config property](#config) has been changed

## change

Will be triggered when the attribute value has been changed

# Methods

## value()

Defines how to get and set editor value

## initComponent()

Used to initialise the editor component. Can be called in ngOnInit or ngAfterViewInit. Refer to [Angular lifecycle hooks](https://angular.io/guide/lifecycle-hooks) to view the details.

Typical jobs can be done here are,
- define validation function
- backup the editor configuration for undo

## configure()

Used to bring up the configuration popup and apply the configuration submitted by the popup

## applyConfig()

Used to fore the editor to apply its configuration

## validateValue()

Used to force the editor to validate its value

## setDisplay(usedFor: string = null, optionValue: boolean = null)

Used to set display option for visibility or editability

## setError(hasError: boolean, errorMessage?: string)

Used to set error state and message on the editor

# Implementations

## Validator
[Custom validators](https://blog.thoughtram.io/angular/2016/03/14/custom-validators-in-angular-2.html#building-a-custom-validator)
[Custom validator example in Material Input](https://stackoverflow.com/questions/46696879/angular2-material-custom-validation-for-angular-material-input)

## ControlValueAccessor
[Custom form control](https://blog.thoughtram.io/angular/2016/07/27/custom-form-controls-in-angular-2.html)
[Custom form control example compatible with reactive forms and Material](https://itnext.io/creating-a-custom-form-field-control-compatible-with-reactive-forms-and-angular-material-cf195905b451)
