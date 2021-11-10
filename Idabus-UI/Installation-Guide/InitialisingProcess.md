---
layout: docs

title: Initialising Process
#description:
filename: InitialisingProcess.md
permalink: /installation/initialisingprocess/

nav_order: 3
status: in progress
parent: Installation Guide
toc: true
---

{% include toc.md %}



# Diagram

![init_process.png](/img/init_process-61f4f0ae-76a0-4bcd-8f48-568dbbf0487f.png)

# Process description

## 1. main.ts
This is the first script called when starting the UI, which bootstraps the first module to be loaded.

The main activities are,
- Read MSAL (Microsoft Authentication Library) settings from config file
- Bootstrap App module

## 2. App component (app.component.ts)
This is the main entrance of the UI, the first component called after bootstrap process.

The main activities are,
- Register callback functions for MSAL
- Register Http Intercepter
  - For file uploader

## 3. Startup service (startup.service.ts)
Things are prepared here to get ready to start the UI. Only absolutely necessary and fast finished jobs will be done here. Other jobs consuming long time will be done in splash window.

The main activities are,
- Initialise configuration service
- Initialise translation service
- Read cache via storage service
  - initialise authentication service if cached
  - initialise resource service if cached
- Navigate to
  - login if no authentication info provided
  - splash if authenticated

### 3.1 Login (signin.component.ts)
If no authentication cached, user will be navigated to the login page to provide his credential.

The main activities are,
- Basic login: authentication using user name and password
- Windows login: authentication using windows kerberos ticket
- Azure login: authentication using Azure AD account

## 4. Splash (splash.component.ts)
This is the first page called after user has authenticated himself. Necessary and time consuming jobs will be done here to prepare the data and get ready for showing the UI.

The main activities are,
- Initialise resource service
  - get encryption key and access token (On-Premises only)
  - get browser language
  - get settings for login user
    - attributes (display name, job title, photo etc.)
    - view sets (incl. primary, admin and standard)
    - right sets (for access management)
    - individual settings (ex. language preference, saved queries etc.)
- Navigate to
  - home page if no special url
  - the page specified in url
