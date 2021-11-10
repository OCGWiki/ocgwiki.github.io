---
layout: docs

title: Search Scopes - Part 1
#description:
filename: 6-Search-Scopes-(Part-I).md
permalink: /guides/searchScopes1/

nav_order: 6
status: in progress
parent: Guides
toc: true
---

{% include toc.md %}

# Scenario

Search Scopes are used to separate/filter and query for objects. The **Search all resources** or **Simple Search** search bar is located on the very top of the IDABUS® UI and first place to search for objects like (Persons, Groups, Units, etc.). A search automatically starts after a certain number of minimum characters are entered in the search field. The default amount of required characters is 3:

![image.png](/img/image-f27024b0-fa31-43c9-9afa-d560b65ed01c.png)

By default the following **Search Scopes** are available:

- Person
- Contract _(disabled)_
- B2B
- Offboarding _(disabled)_
- Group
- ocgPAMGroup
- ocgPermission _(disabled)_
- ocgTeam _(disabled)_
- ocgOrgUnit
- ocgRole
- ObjectTypeDescription _(disabled)_
- AttributeTypeDescription _(disabled)_
- BindingDescription _(disabled)_
- Set _(disabled)_
- ManagementPolicyRule _(disabled)_
- RequestBasedWorkflowTrigger _(disabled)_
- Workflow _(disabled)_
<br><br>

If a search is triggered the **Search all resources** textbox drops a result panel showing up matches separated by **Search Scopes**:

![image.png](/img/image-755f2754-da67-415c-b8f0-cacdb96966a0.png)

The image above shows 6 active search scopes (Person/User, Azure B2B, Groups, PAM groups, Organizational Units and Roles). For the keyword _**'test'**_ entered in the search field only the Roles-Scope found a single match called _**'Tester'**_ while the PAM groups are still being queried.

Queries are performed case-insensitive and can contain wild cards such as the percent sign (**%**) and/or start with an exclamation mark (**!**) in order to search for exact matches only. Let´s assume we have the following personal data available:

- Eva
- Evan
- Nevada

Searching for _**'%eva'**_ will find all records above as all start with or contain _**'eva'**_.
Searching for _**'eva'**_ will only find the first two records.
Searching for exactly _**'!eva'**_ will only find the first record.

# Configuration

<span style="color: #8000FC">**"searchScopes"**</span> can be modified, added, removed and enabled or disabled in the custom configuration file in section:
`C:\inetpub\Oxford Computer Group\IDABUS UI\portal\app\customisation\assets\config\customConfig.dev.json`

# Parameters
## Search Scopes

| Key | Description | Values |
|-----|-------------|--------|
| name | Defines a unique name/key for this Search Scope.<br>Example: `person` | string |
| type | Specifies the Object Type as defined in the MIM Portal.<br>Example: `Person` | string |
| text | A localizable string that is shown to the user to identify this scope.<br>Example: `l10n_users`| localizable string |
| icon | Specifies the [Google Material Icon](https://fonts.google.com/icons?style=baseline) to be used for this scope. | string |
| enabled | Specifies whether or not this scope is displayed in the **"Search all resources"**-results. | true/false |
| query | Defines the normal query to be triggered. In order to search in all person´s first and last names the following search should be performed:<br>`/Person[starts-with(FirstName, '%SearchText%') or starts-with(LastName, '%SearchText%')]`<br><br>_**%SearchText%**_ will be replaced with the user´s input characters at runtime. | XPath |
| exactQuery | Defines the exact query to be triggered when the user performs an exact search using the exclamation mark _**(!)**_. The main difference to a normal search is that an exact search can only use equivalents _**(=)**_ but no _**starts-with**_ or _**contains**_.<br>`/Person[FirstName='%SearchText%' or LastName='%SearchText%']`<br><br>_**%SearchText%**_ will be replaced with the user´s input characters at runtime. | XPath |
