---
layout: docs

title: State Tile
#desription: <add description if needed>
filename: State-tile.md
permalink: /dashboardcomponents/statetile/

nav_order: 25
status: in progress
parent: Dashboard Components
toc: true
---

{% include toc.md %}



# General

State tile can be used to display information containing icon, text and a result of xpath query.

# Configuration

![images_state_tile.png](/img/images_state_tile-e976e35c-f7b5-4a42-a426-72fb38769c10.png)

## Placeholder

- {0} - representing the result of the query

## Query

- if set to query counter, the count of the xpath query will be returned
- if set to query attribute, the value of the attribute will be returned

## Action

- object type name - navigate to the resource list of the resource type
- search scope name - navigate to the in search scope defined target address

## Allowed sets

- if defined, the tile is only visible to the users, who is a member of the sets
- if not defined, the tile is visible to everyone
