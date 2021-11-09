---
layout: docs

title: Login Page
#description:
filename: 2-Login_Page.md
permalink: /guides/loginPage/

nav_order: 2
status: in progress
parent: Guides
toc: true
---

{% include toc.md %}

# Scenario

After System-Selection the Login-Page appears with the following two options:
- Login with On-Prem AD Account _(left icon)_
- Login with username and password _(right icon)_

![image.png](/img/image-6a8f4b5f-5eb7-4c1d-8558-c5f185c059da.png)

To authenticate click the appropiate icon for your authentication model. For username and password authentication the dialog changes to:

![image.png](/img/image-ef12a978-b804-4d17-bea9-2e20021df5ec.png)

The following chapters describe how to use both authentication models and which parameters are involved.

# Configuration

The authentication is driven by two top-level parameters within the following JSON file:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\config\customConfig.dev.json`

# Parameters
## Authentication

| Key | Description | Values |
|-----|-------------|--------|
| dataServiceUrl| The Url to the DataService (binding and port) as hosted on IIS including the suffix `/api`. <br><br> **REQUIRED** | URL |
| domain | The NetBIOS name of the domain. <br><br> **REQUIRED** | string |
