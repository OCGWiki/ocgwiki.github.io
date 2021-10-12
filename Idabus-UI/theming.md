---
layout: docs

title: Theming
#description: 
filename: Theming.md
permalink: /theming/

nav_order: 10
status: in progress
parent: Login Page
toc: true
---

# Global setting

Theme settings can be managed in one place and take effect for all elements within the UI.
This setting is defined
 - for core project in assets/theme/custom-theme.scss
 - for customisation project in customisation/assets/theme/customTheme.scss

# Define colours

You can define 5 colours used for different purposes, they are
 - primary colour - colour palette
 - accent colour - colour palette
 - warn colour - colour palette
 - primary text colour - simple colour
 - secondary text colour - simple colour

## Using colour palette

You can define custom colour palette using [this link](http://mcg.mbitson.com)

You can see the defined colour with different Hue (500 is the standard) and it's contrast color

With a selected colour palette, say $selected-colour, you can define the primary, accent and warn colour like this,
```js
$custom-theme-primary: mat-palette($selected-colour);
```
```js
$custom-theme-accent: mat-palette($selected-colour);
```
```js
$custom-theme-warn: mat-palette($selected-colour);
```

## Text colour

Text colour are simple colour. It is defined in light- or dark-theme options. You can extract and overwrite it using the merge function
 - [foreground and background data structure defined in theme](https://stackoverflow.com/questions/45382529/angular-2-material-foreground)
 - [fetch colour setting from theme and overwrite it using merge](https://stackoverflow.com/questions/43919927/angular-material2-theming-how-to-set-app-background)

**In OCG UI you can simply define the following variable to overwrite this setting**
 - $custom-text-color
 - $custom-secondary-text-color

# Pre-defined CSS classes

You can use pre-defined CSS classes in your customisation project, they are
 - Style: color
   - primary-color
   - accent-color
   - warn-color
   - primary-contrast-color
   - accent-contrast-color
   - primary-text-color
   - accent-text-color
   - disabled-text-color
 - Style: background-color
   - primary-bg-color
   - accent-bg-color
   - warn-bg-color
   - background-bg-color
   - disabled-bg-color

# Change theme dynamically

For now, changing theme dynamically is not supported

# Switch between light- and dark-theme

For now, switching between light- and dark-theme is not supported
