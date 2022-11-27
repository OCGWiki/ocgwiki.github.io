---
layout: docs

title: Modal Services
#desription: <add description if needed>
filename: Modal-Service.md
permalink: /services/modal/

nav_order: 20
status: in progress
parent: Services
toc: true
---

{% include toc.md %}


## **show**  

**Description**:  opens a dialog customized wiht parameters
**Parameters**:
- **type**: ModalType - type of Modal(Error, Warning or Info)
- **title**: string - default value for the key if none found
- **content**: string - text inside of the dialog
- **width**?: string `|` number - width of the dialog
- **buttons**?: Array<ModalButton> - buttons in the dialog

**Example**: show(ModalType.error, 'key_error', err.message)
**Remark**: this function returns MatDialogRef<ModalComponent>

## **popup**

**Description**:  opens a popup customized wiht parameters
**Parameters**:
- **popupConfig**: PopupConfig - customizable properties of the popup

**Example**:  const popupConfig PopupConfig = new PopupConfig();
popup(popupConfig)
**Remark**: this function returns Observable<WindowCloseResult>
