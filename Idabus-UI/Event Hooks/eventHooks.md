---
layout: docs

title: Event Hooks
description: This is the IDABUS UI Installation Guide
filename: eventHooks.md
permalink: /eventHooks/

nav_order: 9
has_children: true
status: in progress
toc: true
---

## What are event hooks
Event hooks are reserved empty functions, which will be called if one of a pre-defined events is fired. Injecting code into the event hooks allows you to take control of how to response to such an event.

Available event hooks

- [Form view event hooks](/eventHooks/formView/)
- [Tab view event hooks](/eventHooks/tabView/)
- [Wizard event hooks](/eventHooks/wizard/)
- [Menu event hooks](/eventHooks/menu/)
- [Sidebar event hooks](/eventHooks/sidebar/)
- [Card event hooks](/eventHooks/card/)



## Distributor
The main entry to distribute the various of events is the event-dispatcher service in the core component. There are default actions defined to reply an event and thus can be used for a good reference about how to handle the events.

## Receiver
The main receiver of the events is the custom service in the customisation project. You can define new event handler or overwrite the existing event handler from the event-dispatcher service.

## Parameters
When an event is triggered, the according event hook will be called with a parameter. Different event hooks have different parameter, which contains an event type and an event name, indicating what kind of event it is and where the event came from (like a controller, a view etc.)

## Extend vs. partial overwrite vs. complete overwrite
- By adding a new event type + name combination in the event hook, you can extend the event handling
- If you add an existing event type + name combination, the default behavior defined in the event-dispatcher service will be overwritten
- If the event hook returns true, the default behavior defined in the event-dispatcher will be skipped, thereby applies only the custom logic

## Overview of the event hook model

![event_hooks_model.png](/img/event_hooks_model-482b6578-7931-4887-bb51-6ef350fb8752.png)
