---
layout: docs

title: Wizard Event Hooks
#description: 
filename: wizardEventHook.md
permalink: /eventHooks/wizard/

nav_order: 3
parent: Event Hooks
status: in progress
toc: true
---
Wizard view is a popup dialog or stepper. It can be dynamically created in the UI and used for object creation or others tasks, where a popup window is needed. Wizard view can contain all kind of [editors](/editors/).

## onWizardAfterInit

### Trigger
This event will be triggered after the wizard has initialised its UI components including the editor components.
This event hook can be used to set custom initial values to the editor components.

### Parameter
```js
export class WizardEvent {
  type: string;
  wizard?: PopupWizardComponent;
  windowRef?: WindowRef;
  parameter?: any;
}
```

### Parameter example
![onwizardafterinit.png](/img/onwizardafterinit-39883b45-a228-44c3-94f5-4f612881d165.png)

### Annotation
- Using `event.wizard.viewName` to determine which wizard (defined in UI under settings -> create wizard) fired the event
- Using `event.tabView.getEditor()` to get an instance of an editor with desired attribute name

## onWizardEditorEvent

### Trigger
This event will be triggered if any of the editors (text-editor, identity-picker etc.) have changed their value.
This event hook can be used as event handler for the editors.

### Parameter
Same as [onWizardAfterInit](#onWizardAfterInit)

### Parameter example
![onwizardeditorevent.png](/img/onwizardeditorevent-17a6ef16-230e-42ed-b9c5-b5267604d4a0.png)

### Annotation
- Using `event.wizard.viewName` to determine which wizard (defined in UI under settings -> create wizard) fired the event
- Using `event.parameter` to determine which editor fired which type of event
- Using `event.wizard.data` to get configuration and parameters passed to the wizard
- Using `event.tabView.getEditor()` to get an instance of an editor with desired attribute name

## onWizardBeforeClose

### Trigger
This event will be triggered after the submit button of the wizard is clicked but before the popup window closes itself.
This event hook can be used to check the values to be submitted and has a chance to prevent the popup window from closing.

### Parameter
Same as [onWizardAfterInit](#onWizardAfterInit)

### Parameter example
![onwizardbeforeclose.png](/img/onwizardbeforeclose-e8080fc5-a7c0-4be4-9513-6f2fdb3ee0ca.png)

### Annotation
- Using `event.wizard.viewName` to determine which wizard (defined in UI under settings -> create wizard) fired the event
- Using `event.parameter` to get the submitted resource
- Using `event.wizard.data` to get configuration and parameters passed to the wizard
- Using `event.tabView.getEditor()` to get an instance of an editor with desired attribute name
- Using `event.windowRef` to submit values and close the popup window or to prevent it from closing
  - call event.windowRef.close(event.parameter) to simulate the submit action
  - call event.windowRef.close() to simulate the cancel action
  - if no close function is called, the popup window stays open

## onWizardAfterClose

### Trigger
This event will be triggered after the submit button of the wizard is clicked and the popup window is closed.
This event hook can be used to handle the submitted resource (ex. create, update etc.).

### Parameter
Same as [onWizardAfterInit](#onWizardAfterInit)

### Parameter example
![onwizardafterclose.png](/img/onwizardafterclose-ce155e7b-16be-4ea6-9cab-c2caaf36532c.png)

### Annotation
- Only `event.parameter` is accessible
- Using `event.parameter` to get the submitted resource
