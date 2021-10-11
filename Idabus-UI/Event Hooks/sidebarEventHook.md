---
layout: docs

title: Sidebar Event Hooks
description: This is the IDABUS UI Installation Guide
filename: sidebarEventHook.md
permalink: /sidebarEventHook/

nav_order: 5
parent: Event Hooks
status: in progress
toc: true
---
Sidebar is a menu bar on the left side of the UI. Sidebar items can be configured in the config.json file and the action handler can be defined through the event hook.

## onSidebarEvent

### Trigger
This event will be fired after a sidebar item is clicked.
This event hook can be used to define the event handler for the click action.

### Parameter
```js
export class BroadcastEvent {
  name: string;
  parameter?: any;
  payload?: any;
}
```

### Parameter example
![onsidebarevent.png](/img/onsidebarevent-6b408eb0-44d4-43d8-8fb9-ce7f1ca6d56e.png)