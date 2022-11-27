---
layout: docs

title: Utils Service
#desription: <add description if needed>
filename: utilsService.md
permalink: /services/utils/

nav_order: 40
status: in progress
parent: Services
toc: true
---

{% include toc.md %}


## buildDataServiceUrl

builds data service url with controller and method name

| Parameter | Datatype | Description |
|--|--|--|
| **baseUrl** | `string` | url of the data service  |
| **controllerName** | `string`  | controller name in the data service |
| methodName? | `string` | method name in the data service |
| serviceType? |  `string` | service type of web api |
| paths? | `string` | service type of web api |

**Example**: `buildDataServiceUrl(this.baseUrl,'resources/${id}');`

## Encrypt  

encrypt string with a given key

| Parameter | Datatype | Description | Default value |
|--|--|--|--|
| **message** | `string` | string to encrypt | |
| key? | `string` | encryption key  |  `OCGDESecurityAES` |


## Decrypt  

decrypt string with a given key

| Parameter | Datatype | Description | Default value |
|--|--|--|--|
| **message** | `string` | decrypt to encrypt |  |
| key? | `string` | decryption key | `OCGDESecurityAES` |


## DeepCopy

copies object with all its properties

| Parameter | Datatype | Description |
|--|--|--|
| **obj** | any | object to be copied |

## EvalScript

gets resources with the given query

| Parameter | Datatype | Description |
|--|--|--|
| **text** | `string` | xpath query to search resources |

**Example**: `getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])`
_Remark:_ this function returns `Observable<ResourceSet>`


## evaluate

gets resources with the given query

| Parameters | Datatype | Description | Default Value |
|--|--|--|--|
| **query** | `string` | xpath query to search resources |  |
| attributes? | `string[] = []` | attributes to fetch | if not specified, only `DisplayName` will be fetched |
| **pageSize** | `int`| page size of the returned resources | **??** |
| **index** | `int`| starting index in the whole result queue | **??** |
| resolveRef? | `bool` | if set to true, reference attributes will be represented as object instead of guid | `false` |
| **orderBy** | `string[] = []` | sorting attributes definition | **??** |
| **adminMode** | `bool` |  | `false` |

**Example**: `getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])`
_Remark:_ this function returns `Observable<ResourceSet>`

## **CopyInto**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **FilterToXPath**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>


## **GetEditorExpressions**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **ExamValue**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **ExtraValue**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **ToSaveValue**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **ToSaveResource**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **NavigateToIdentity**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **GetSearchDef**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **ToMomentFormat**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **IsGuid**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **IsDateString**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **sortDictionaryByKey**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **sortDictionaryByValue**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **toXPathQuery**  

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **parseComponentConfig**

**Description**: gets resources with the given query
**Parameters**:
- **query**: string - xpath query to search resources
- **attributes**: string[] = [] - attributes to fetch, if not specified, only DisplayName will be fetched
- **pageSize** = 0 - page size of the returned resources
- **index** = 0 - starting index in the whole result queue
- **resolveRef** = false - if set to true, reference attributes will be represented as object instead of guid
- **orderBy**: string[] = [] - sorting attributes definition
- **adminMode** = false

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>

## **stringifyComponentConfig**  

**Description**: converts
**Parameters**:
- **config**: any - xpath query to search resources

**Example**: getResourceByQuery('/Person[starts-with(DisplayName,'A')]', ['ObjectID'])
**Remark**: this function returns Observable<ResourceSet>
