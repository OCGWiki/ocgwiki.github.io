---
layout: docs

title: Menu Event Hooks
#description:
filename: menuEventHook.md
permalink: /eventHooks/menu/

nav_order: 4
parent: Event Hooks
status: in progress
toc: true
---
{% include toc.md %}

Menus can be built dynamically in OCG UI. You can define a configuration in the config.json file and then use the event hook to load the configuration and build the menu items. After that you can again use the event hook to define the behavior of the menu items.

## onBuildMenuEvent

### Trigger
This event will be triggered after a menu is clicked and before the menu items are built.
This event hook can be used to build menu items for various views.

### Parameter
```js
export class MenuEvent {
  type: string;
  viewName?: string;
  itemName?: string;
  parameter?: any;
  menu?: any;
}
```

### Parameter example
![onbuildmenu.png](/img/onbuildmenu-69e02001-ba16-438a-b75c-1724b6e07b0c.png)

### Annotation
- Using `event.viewName` to determine from which view the event is fired
- Using `event.resourceName` to determine resource type name (including virtual type name)
- `event.parameter` is an instance of the context resource, from which the event is fired
- `event.menu` is an instance of the menu (of type `ActionMenuComponent`), you can fill the `event.menu.menuItems` to build the menu

## onOpenMenuEvent

### Trigger
This event will be triggered after a menu is opened and all menu items are loaded.
This event hook can be used to enable / disable or show / hide menu items according to specific conditions.

### Parameter
Same as [onBuildMenuEvent](#onBuildMenuEvent)

### Parameter example
![onopenmenu.png](/img/onopenmenu-f24433ef-c6e7-46c1-808c-617488131038.png)

### Annotation
- Using `event.viewname` to determine from which view the event is fired
- Using `event.resourceName` to determine resource type name (including virtual type name)
- `event.parameter` is an instance of the context resource, from which the event is fired
- `event.menu` is an instance of the menu (of type `ActionMenuComponent`), you can manipulate the `event.menu.menuItems` array to enable / disable or show / hide menu items
- Set `event.menu.isLoading` to `true` if you want to do some operations and temporarily disable the whole menu

## onMenuEvent
This event will be triggered after a menu item is clicked.
This event hook can be used to define the handler for the click action.

### Parameter
Same as [onBuildMenuEvent](#onBuildMenuEvent)

### Parameter example
![onmenuevent.png](/img/onmenuevent-67a5aa03-740a-431b-9520-1c54630b42c0.png)

### Annotation
- Using `event.viewname` to determine from which view the event is fired
- Using `event.resourceName` to determine resource type name (including virtual type name)
- `event.parameter` is an instance of the context resource, from which the event is fired
- `event.menu` is not needed
