---
layout: docs

title: Resource Service
#desription: <add description if needed>
filename: Resource-Service.md
permalink: /services/resource/

nav_order: 25
status: in progress
parent: Services
toc: true
---

{% include toc.md %}


## **checkCurrentViewSet**  

**Description**:  checks if current view is admin view
**Parameters**: -

## **showInfo**  

**Description**:  shows current version of UI and Data Service
**Parameters**: -

## **clear**  

**Description**:  clears logedInUser attributtes authNMode, encryptionKey, secret, loginUserAttributes, version, baseUrl, language, connUser, user, connection and token
**Parameters**: -

## **buildConnectionString**  

**Description**:  builds connection string from passed parameters
**Parameters**: 
- **userName**: string
- **password**: string 
- **domain**? : string 
- **baseAddress**?: string 

**Remark**: If no domain or base address are passed domain from config and base address '//localhost:5725 ' are going to be used

## **setService**  

**Description**:  sets connection information to information of the authnticated user
**Parameters**: 
- **info**: AuthUser

## **load**  

**Description**:  opens a dialog customized wiht parameters
**Parameters**: 
- **conn?**: string - connection string

**Remark**: If no connection is passed windows authentication will be used

## **getUserConfig**  

**Description**:  checks if current view is admin view
**Parameters**: -

**Remark**: this function returns Observable<any>

## **getCurrentUser**  

**Description**:  gets current User
**Parameters**: 
- **isAuth** = false

**Example**: getCurrentUser(true)
**Remark**: this function returns Observable<Resource>

## **getNextGenWorkflowByID**  

**Description**:  gets workflow by Id
**Parameters**: 
- **id**: string - workflow id

**Remark**: this function returns Observable<Resource>

## **updateNextGenWorkflow**  

**Description**:  updates workflow resource
**Parameters**: 
- **resource**: Resource - resource of workflow that we want to update

## **importResourceFromFile**

**Description**:  imports resources from file
**Parameters**: 
- **file**: File - file from wich we want to import resource
- **objectTypes**: string - type of objects we want to import
- **attributeBlacklist**: string - attributes in file that should not be imported
- **objectReferencesToInclude**: string - references to import (when not defined then no referenes imported)
- **simulationMode**:boolean

**Example**: importResourceFromFile(file, exportTypes, 'Creator', '', true)
**Remark**: this function returns MatDialogRef<ModalComponent>

## **callApi**  

**Description**:  calls data service api with parameters
**Parameters**: 
- **method**: string - method name (put, post, delete..)
- **path**: string - use path to build data service url
- **param**?: any - parameters of http request
- **body**?: any - body of http request
- **header**?: any  - headers of http request

**Example**: callApi('get', 'event/3c431bec-f576-4316-9adc-93b71bbbe430', {slimFormat:'false',})
**Remark**: this function returns MatDialogRef<ModalComponent>

## **getResourceByID**  

**Description**:  gets resource with given id 
**Parameters**: 
- **id**: string - ObjectID of the resource to fetch
- **attributes**: string[] = [] - attributes of the resource to get
- **format** = simple
- **culture** = 'en-US'
- **adminMode** = false

**Example**: getResourceByID(objectID,  ['RequestParameter', 'Target'], 'simple', this.translate.currentCulture,  'true')
**Remark**: this function returns Observable<Resource>

## **getResourceSchema**  

**Description**:  gets schema for specified type of resource
**Parameters**: 
- **typeName**: string - parameter that specifies type of resource
- **culture**  = 'en-US'

**Example**: getResourceSchema('Set')
**Remark**: this function returns Observable<Resource>

## **getResourceByQuery**  

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

## **deleteResource**  

**Description**:  deletes the resource with the given id
**Parameters**: 
- **id**: string - ObjectID of the resource to delete
- **adminMode** = false

**Remark**: this function returns Observable<void | HttpResponse<void>>

## **deleteResourceByQuery** 
 
**Description**:  deletes the resource with the given query
**Parameters**: 
- **query**: string - type of Modal(Error, Warning or Info)

**Remark**: this function returns Observable<void | HttpResponse<void>>

## **createResource**  

**Description**:  creates the given resource
**Parameters**: 
- **resource**: Resource - The resource to be created. ObjectType must exist as a property
- **adminMode**= false

**Example**: createResource({ DisplayName: Example', ObjectType: 'ocgAssignment', ocgObjectType: 'RoleAssignment',ocgObjectScope: 'person')
**Remark**: this function returns Observable<HttpResponse<any>>

## **updateResource**  

**Description**:  updates the given resource
**Parameters**: 
- **resource**: Resource - The resource to be updated. ObjectType must exist as a property
- **adminMode**= false

**Example**: updateResource({ DisplayName: Example', ObjectType: 'ocgAssignment', ocgObjectType: 'RoleAssignment',ocgObjectScope: 'person')
**Remark**: this function returns Observable<HttpResponse<any>>


## **getResourceCount** 
 
**Description**:  gets the total count of resource queried by the given query
**Parameters**: 
- **query**: string - xpath query to search resources
- **adminMode** = false

**Example**: getResourceCount('/Person[AccountName='${sourceArray[pos]}']')
**Remark**: this function returns Observable<number>

## **resourceExists** 
 
**Description**:  returns true/false if the queried resource exists
**Parameters**: 
- **query**: string - xpath query to search resources

**Example**: resourceExists('/Person[AccountName='${sourceArray[pos]}']')
**Remark**: this function returns Observable<boolean>

## **addResourceValue**  

**Description**:  adds values to a multivalued attribute of the resource with given id
**Parameters**: 
- **id**: string - the ObjectID of the resource
- **attributeName**: string - the multivalued attribute name
- **valuesToAdd**: string[] = [] - the values to add, seperated with comma. Format: <value>,
- **adminMode** = false

**Example**: addResourceValue('7fb2b853-24f0-4498-9534-4e10589723c4','ProxyAddressCollection', ['test1@demo.com','test2@demo.com'])

## **removeResourceValue**  

**Description**:  removes values from a multivalued attribute of the resource with given id
**Parameters**: 
- **id**: string - the ObjectID of the resource
- **attributeName**: string - the multivalued attribute name
- **valuesToRemove**: string[] = [] - the values to remove, seperated with comma. Format: <value>,
- **adminMode** = false

**Example**: removeResourceValue('7fb2b853-24f0-4498-9534-4e10589723c4','ProxyAddressCollection', ['test1@demo.com','test2@demo.com'])

## **approve**  

**Description**:  approves or rejects an approval request
**Parameters**: 
- **id**: string - the ObjectID of the request object
- **approve**: boolean - true for approve, false for reject
- **reason**: string - approve reason
- **adminMode** = false

**Remark**: this function returns Observable<void>

## **lookup**  

**Description**:  resolve logedIn user and current date from query
**Parameters**: 
- **text**: string - xpath query to resolve

## **getTypes**  

**Description**:  gets and caches the schema for the given culture
**Parameters**: 
- **culture**: string - in which language the schema should be returned, Default value : en-US
- **adminMode** = false

**Remark**: this function returns Observable<{ [id: string]: TypeResource }> 


## **getType**  

**Description**:  gets and caches the schema with the given typeName and culture
**Parameters**: 
- **type**: string - type name
- **culture**: string - in which language the schema should be returned
- **adminMode** = false

**Example**: getType('Group', 'en-US')
**Remark**: this function returns Observable<{ [id: string]: AttributeResource }>

## **getAttribute**  

**Description**:  gets and caches the schema with the given typeName, attributeName and culture
**Parameters**: 
- **type**: string - type name
- **culture**: string - in which language the schema should be returned
- **adminMode** = false

**Example**: getAttribute('Group', 'ocgObjectStatus', 'en-US')
**Remark**: this function returns Observable<AttributeResource>

## **xpathToJson**  

**Description**:  converts xpath to json
**Parameters**: 
- **xpath**: string - xpath to convert

**Remark**: this function returns Observable<any>


## **jsonToXPath** 
 
**Description**:  converts json to xpath 
**Parameters**: 
- **json**: string - json to convert

**Remark**: this function returns Observable<any>

## **getEventHistory**  

**Description**:  gets history for the event
**Parameters**: 
- **targetId**: string - ID of the events
- **count**: number - page size
- **startTime**: string - start time for history time range
- **endTime**: string - end time for history time range

**Remark**: this function returns Observable<Array<any>>

## **searchEvents**  

**Description**:  searches events with given options
**Parameters**: 
- **count**: number - page size 
- **options**: { eventTypes?: string; statuses?: string; requestorId?: string; targetId?: string; workflowId?: string; triggerId?: string; startTimeMin?: string; startTimeMax?: string; } - options to search events

**Remark**: this function returns Observable<Array<any>>

## **getResourceHistory**  

**Description**:  gets history for the resource
**Parameters**: 
- **targetId**: string - ObjectID of the resource
- **dateTime**: string - time for history time range

**Remark**: this function returns Observable<any>

## **getDeletedHistory**  

**Description**: gets history for deleted object
**Parameters**: 
- **targetId**: string - ObjectID of deleted resource

**Remark**: this function returns Observable<any>

## **getRootEvent**  

**Description**:  opens a dialog customized wiht parameters
**Parameters**: 
- **eventId**: string -

**Example**: show(ModalType.error, 'key_error', err.message)
**Remark**: this function returns Observable<string>

## **getPathEvents**  

**Description**:  opens a dialog customized wiht parameters
**Parameters**: 
- **eventId**: string -

**Example**: show(ModalType.error, 'key_error', err.message)
**Remark**: this function returns Observable<Array<any>>

## **getEvent**  

**Description**:  gets event with id
**Parameters**: 
- **eventId**: string - id of the event to get
- **includeChildEvents**: boolean - true if we want to become child events
- **recursive**: boolean
- **maxNumber**: number = 30

**Remark**: this function returns Observable<any> 

## **getRecentEvents** 
 
**Description**:  gets recent events orderd by creation time
**Parameters**: 
- **count**: number - page size 
- **eventTypes**: string - type of events to get

**Remark**: this function returns Observable<ResourceSet>

## **getChildEvents** 
 
**Description**:  gets all child events of parent event
**Parameters**: 
- **parentId**: string - id of parent event

**Remark**: this function returns Observable<Array<any>>

## **getAttributeDisplayName**  

**Description**:  gets display name of the attribute from its name 
**Parameters**: 
- **typeName**: sting - type of resource whose schema is needed
- **attributeName**: string - attribute name 

**Example**: getAttributeDisplayName('Person', 'ocgObjectScope')
**Remark**: this function returns string

## **loginUserIsAdmin**  

**Description**:  checks if loged-in user is administrator
**Parameters**: -

**Remark**: this function returns boolean

## **getNextPage**  

**Description**:  gets next page results
**Parameters**: 
- **pagingToken**: string 
- **pageSize**: number - number of the results in the page
- **path** = 'resources/search/continue'

**Remark**: this function returns Observable<ResourceSet>

## **refreshPagingTokens**  

**Description**:  refreshes paging tokens
**Parameters**: 
- **tokens**: string[] - list of tokens to refresh

**Remark**: this function returns Observable<string[]>
