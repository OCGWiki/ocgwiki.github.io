---
layout: docs

title: Image Settings
#desription: <add description if needed>
filename: Image-settings.md
permalink: /gobalconfig/imagesettings/

nav_order: 10
status: in progress
parent:  Global Configuration
toc: true
---

{% include toc.md %}



# Customize images and background colour

## Splash page

![images_splash.png](/img/images_splash-dd3ade75-1c50-4b8a-94aa-ada0536f859e.png)

## Side bar & favourite icon

![images_sidebar.png](/img/images_sidebar-7fc4d8e1-bd45-4ccb-bd7c-b818264c9731.png)

## Login page

![images_login.png](/img/images_login-04dc52ac-5ba9-4e74-b218-698707242295.png)

# Properties

|Key|Type|Default|Description|
|--|--|--|--|
|logoSplash|string|assets/img/idabuslogosplash.png|logo on the splash page|
|logoSplashHeight|number|80|height of the splash page logo, the width will be adjusted automatically with the height|
|bgClolorSplash|string|#2f2f2e|background colour of the splash page|
|bgColorSplashLoading|string|snow|background colour of the loading animation on the splash page|
|logoLarge|string|assets/img/idabuslogo.png|large logo on the top of the side bar|
|logoLargeHeight|number|46|height of the large logo, the width will be adjusted automatically with the height|
|logoSmall|string|assets/img/idabusfavicon.png|small logo on the top of the side bar|
|logoSmallHeight|number|42|height of the small logo, the width will be adjusted automatically with the height|
|favIcon|string|assets/img/idabusfavicon.png|favourite icon displayed on the browser tab|
|bgLogin|string|assets/img/img-identity.jpg|background of the login page|
|bgLoginFilterOpacity|number|0.6|transparent level of the background on the login page|
