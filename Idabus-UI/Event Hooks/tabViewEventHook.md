---
layout: docs

title: Tab View Event Hooks
#description:
filename: tabViewEventHook.md
permalink: /eventHooks/tabView/

nav_order: 2
parent: Event Hooks
status: in progress
toc: true
---
{% include toc.md %}

Tab view controls only the tab headers in every [form view](/eventHooks/formView/). The tab body is a container for the [Attribute View](/Views/Attribute-View/). Please refer to [Views](/Views/) to see more details.



## onTabAfterInit

### Trigger
This event will be triggered two times,
- after object id in the URL is changed. At this point, only DisplayName, ObjectID and ObjectType of the displayed resource are available.
- after attributes are loaded. At this point, all defined attributes of the displayed resource have been loaded.

This event hook can be used to conditionally show / hide tabs according the attribute values of the displayed resource.

### Parameter
```js
export class TabViewEvent {
  type: string;
  tabView?: any;
}
```

### Parameter example
![tabviewevent.png](/img/tabviewevent-146feadd-5559-4792-999c-8def1c45006d.png)

### Annotation
- Using `event.tabView.formName` to determine which form (defined in UI under settings -> editing form) fired the event
- `event.tabView.currentResource` is a instance of the displayed resource and contains all loaded attributes of the resource
- Using event.tabView.hideTabs(string[]) to show / hide tabs. The tabs with its name defined in the string array parameter will be hidden. If the parameter is an empty array or null, all tabs are shown
