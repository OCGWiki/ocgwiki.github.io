---
layout: docs

title: Form View Event Hooks
description: This is the IDABUS UI Installation Guide
filename: formViewEventHook.md
permalink: /formView/

nav_order: 8
parent: Event Hooks
status: in progress
toc: true
---
Form views are usually used to show object attributes and details. Other object views like [tab view](/OCG-UI/Views/Tab-View) or [attribute view](/OCG-UI/Views/Attribute-View) are built on the top of the form view. Please refer to [Views](/OCG-UI/Views) to see more details

[[_TOC_]]


## onViewAfterInit

### Trigger
This event will be triggered after the form view has initialised all of its ui components including the editor components.
This event hook can be used to set custom initial values after all attributes of the displayed object are loaded 

### Parameter
```js
export class ObjectViewEvent {
  type: string;
  editorEvent?: EditorEvent;
  tabView?: TabViewComponent;
  parameter?: any;
}
```
```js
export class EditorEvent extends BroadcastEvent {
  attributeName: string;
  resourceId: string;
  resourceType: string;
}
```

### Parameter example
![objectviewevent2.png](/img/objectviewevent2-80b83133-7e71-4696-942a-5338edbe5243.png)

### Annotation
- Using `event.tabView.formName` to determine which form (defined in UI under settings -> editing form) fired the event
- No `event.editorEvent` is needed
- Using `event.tabView.getEditor()` to get an instance of an editor with desired attribute name

## onViewEditorEvent

### Trigger
This event will be triggered if any of the editors (text-editor, identity-picker etc.) have changed their value.
This event hook can be used as event handler for the editors.

### Parameter
Same as [onViewAfterInit](#onViewAfterInit)

### Parameter example
![objectviewevent.png](/img/objectviewevent-9aa0c020-35e5-494e-9f75-a391bc318924.png)

### Annotation
- Using `event.tabView.formName` to determine which form (defined in UI under settings -> editing form) fired the event
- Using `event.editorEvent` to determine which editor fired which type of event
- Using `event.tabView.getEditor()` to get an instance of an editor with desired attribute name

## onViewBeforeSave

### Trigger
This event will be triggered after the save button of a resource detail view is clicked and before the resource is indeed saved.
This event hook can be used to do some finale work before a resource will be saved.

### Parameter
Same as [onViewAfterInit](#onViewAfterInit)

### Parameter example
![onviewbeforesave.png](/img/onviewbeforesave-81063eb2-31c7-4302-84a3-062adcf3d40f.png)

### Annotation
- Using `event.tabView.formName` to determine which form (defined in UI under settings -> editing form) fired the event
- Using `event.tabView.getEditor()` to get an instance of an editor with desired attribute name
- Using the following code to fire the save action, otherwise changes will not be saved
```js
this.swap.broadcast({
  name: 'save-attribute',
  parameter: param.parameter,
});
```

## onViewAddIdentities

### Trigger
This event will be triggered after on or more identities are added into an identity-list.
This event hook can be used to define the behavior when a multivalued attribute gets value(s) added.

### Parameter
Parameter type is any

### Parameter example
![identitylist.png](/img/identitylist-9616368d-7052-4eac-8550-8da93d8a760f.png)

### Annotation
- `event.values` holds the added values
- Using `event.attribute` to determine which editor fired the event
- `event.resourceID` can be used to get the displayed object

## onViewRemoveIdentities

### Trigger
This event will be triggered after on or more identities are removed from an identity-list.
This event hook can be used to define the behavior when a multivalued attribute gets value(s) removed.

### Parameter
Parameter type is any

### Parameter example
![identitylistremove.png](/img/identitylistremove-c972d85f-9cd2-4888-a723-c8d843d1fa84.png)

### Annotation
- `event.values` holds the removed values
- Using `event.attribute` to determine which editor fired the event
- `event.resourceID` can be used to get the displayed object

## onViewRemoveAllIdentities

### Trigger
This event will be triggered after the "remove all" button on the identity-list is clicked.
This event hook can be used to define the behavior when a multivalued attribute is to be cleared.

### Parameter
Parameter type is any

### Parameter example
![identitylistremoveall.png](/img/identitylistremoveall-1e96752b-850d-46ac-80f8-028835248e59.png)

### Annotation
- `event.values` is not needed
- Using `event.attribute` to determine which editor fired the event
- `event.resourceID` can be used to get the displayed object