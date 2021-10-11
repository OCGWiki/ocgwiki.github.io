---
layout: docs

title: Card Event Hooks
description: This is the IDABUS UI Installation Guide
filename: cardEventHook.md
permalink: /eventHooks/card/

nav_order: 6
parent: Event Hooks
status: in progress
toc: true
---
Action card is a component where data and icon can be shown in different ways. It has two actions, the primary and the secondary action. Usually the primary action navigate the user to an other view (like a list view) and the secondary action bring up a popup window (like a creation wizard).


## onCardEvent

### Trigger
This event will be fired after one of the card actions is triggered.
This event hook can be used the define the event handler for the action.

### Parameter
```js
export class BroadcastEvent {
  name: string;
  parameter?: any;
  payload?: any;
}
```

### Parameter example
![onactioncardevent.png](/img/onactioncardevent-05631d24-f955-430a-9c62-1aefd0d1d984.png)

### Annotation
- Using `event.name` to determine from which action card the event is fired
- Using `event.parameter` to determine whether it is a primary or a secondary action
