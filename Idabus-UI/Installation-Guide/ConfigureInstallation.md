---
layout: docs

title: Configure and verify installation
#description:
filename: ConfigureInstallation.md
permalink: installation/configureInstallation/

nav_order: 4
status: in progress
parent: Installation Guide
has_children: true
toc: true
---

{% include toc.md %}


# Configure OCG Data Service
Navigate to the IIS folder, which hosts the OCG Data Service and edit the "appsettings.json" file.<br>
![config1_1.png](/img/config1_1-beee0229-1082-4b1a-8c01-faaa8a01e9a3.png)

| Key | Description | for OnPrem | for Cloud |
|--|--|--|--|
| Logging | Defines the minimum message level, which should be logged. Available values are Trace, Debug, Info, Warn, Error and Fatal. Default is Warn.<br>Refer to [NLog official home page](https://nlog-project.org/) to view details |  |
| RoutePrefix | If the service is hosted in IIS as an application under a website, RoutePrefix should be defined as the application name (don't forget the leading "/"), otherwise it should be empty |/portal/|EMPTY|
| EnableCache | Enabling cache can make the service acting faster und consuming less memory. If disabled, schema changes are visible without iisreset ||
| CacheDuration | In units of minutes, defines how long the cache is available ||
|Singleton|Use the same instance throughout the whole service life cycle. Set to false can speed up the service but could lead to race condition||
|EncryptionKey|Don't change this setting, it will be obsoleted in the next versions||
|TenantId, ClientId, ClientSecret, RedirectUrl|Only needed when using the Azure API of the data service (like sending B2B invitation)||
|AllowedOrigins|Lists origins which are allowed to access the service||

# Configure OCG UI
Navigate to the IIS folder, which hosts the OCG UI and edit the "customConfig.dev.json" file under app\customisation\assets\config.
>If OCG UI is published with --prod option, you should edit the "customConfig.prod.json" file

## General Settings

![config1_2.png](/img/config1_2-a9db3469-73c4-4145-8ed4-796ebb6ceaae.png)

| Key | Description | Default |
|--|--|--|
|dataServiceUrl|The Url to the OCG Data Service||
|portalUrl|The Url to the MIM Portal||
|nextGenServiceUrl|The Url to IDABUS Service||
|routePrefix|If the UI is hosted in IIS as an application under a website, routePrefix should be defined as the application name (don't forget the beginning and the ending "/"), otherwise it should be empty||
|domain|Active directory service domain name||
|encryptionKey|Don't change this setting, it will be obsoleted in the next versions||

# Verify the installation
- Navigate to the OCG Data Service Url, you should see the Swagger page.
- Navigate to the OCG UI Url, you should see the dashboard of the UI.

>If OCG Data Service is published as an application under a website, append a "/" to the end of the Url (if not yet) to access the Swagger page

>Swagger doesn't support Internet Explorer


| ![verify1_1.png](/img/verify1_1-e1c9eccc-51bc-40cd-af40-b4ea93a3b453.png) |
|---|
| ![verify1_2.png](/img/verify1_2-46ecad22-2c2f-4257-8f13-1c92b56848fd.png) |
