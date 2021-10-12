---
layout: docs

title: Separator Editor
#description: 
filename: separatorEditor.md
permalink: /editors/separatorEditor/

nav_order: 9
parent: Editors
status: in progress
toc: true
---

# Configuration

|Property name| Default value | Annotation |
|--|--|--|
|attributeToShow|undefined|any attribute can be displayed inside the Separator-Editor|
|backgroundColor|lightblue|Color picker|
|borderColor|black|Color picker|
|borderRadius|0|Radius defining the rounding of the border edges|
|borderStyle|none|Allowed values: dashed, dotted, double, groove, inset, none, outset, ridge, solid|
|borderWidth|0|Width of the border around the Separator|
|color|black|Color picker|
|fontSize|16|Specifies the CSS-FontSize [pt] to be applied to the text displayed in the Separator|
|height|26|Specifies the height for the Separator|
|icon|undefined|Integration of a Google Material Font icon possible|
|paddingBottom|0|The CSS-Padding (0 - n) downwards to be used for the Separator|
|paddingTop|0|The CSS-Padding (0 - n) upwards to be used for the Separator|
|query|undefined|Elements can be queried from MIM Portal using this XPath-Query in order to retrieve one to N result objects.|
|separator|';'|Only applicable if Data mode is set to Query.|
|spaceBottom|0|The CSS-Padding (0 - n) downwards to be used for the displayed text in the Separator|
|spaceLeft|0|The CSS-Padding (0 - n) to the left side to be used for the displayed text in the Separator|
|spaceRight|0|The CSS-Padding (0 - n) to the right side to be used for the displayed text in the Separator|
|spaceTop|0|The CSS-Padding (0 - n) upwards to be used for the displayed text in the Separator|
|text|undefined|Any text that gets displayed inside the Separator|
|textAlign|start|Can be either Start, Center or End to specify the text align for this Separator|
|textMode|text|Allowed Values: text or query|
|toolTip|undefined|Text value that gets displayed when hovering over the separator editor|
|verticalAlign|center|Allowed values: **start** - Text on the top edge; **center** - Text is centred; **end** - Text on the lower edge|

# Configuration in UI

![image.png](/img/image-babad78f-bcee-4fe8-8fa4-5e271d39045d.png)

![image.png](/img/image-c90ee1ef-e8f7-4965-a5af-4fc3bf7d948c.png)

# Event handler

--
