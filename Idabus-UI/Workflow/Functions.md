---
layout: docs

title: Workflow Functions
#desription: <add description if needed>
filename: Functions.md
permalink: /workflow/functions/

nav_order: 10
status: in progress
parent: Workflow
toc: true
---

{% include toc.md %}



# MIMWAL support
All [MIMWAL functions](https://github.com/Microsoft/MIMWAL/wiki/Functions) are supported except the following functions,
- ```CreateSqlParameter```, ```CreateSqlParameter2```, ```ExecuteSqlScalar```, ```ExecuteSqlNonQuery```
- ```ParametersContain```, ```ParametersList```, ```ParametersTable```
- ```ParameterValue```, ```ParameterValueAdded```, ```ParameterValueRemoved```

# Extended functions

## sequenceEqual(array1, array2): bool
Checks whether two lists are equal (incl. order)

## subsetEqual(array1, array2): bool
Checks whether two lists are equal (ignore order)

## setUnion(array1, ..., arrayN): array
Creates the union of the input lists (0 to 10 items)

## setIntersection(array1, ..., arrayN): array
Creates the intersection of the input lists (0 to 10 items)

## setDifference(array1, array2): array
Generates the quantity difference of two lists

## toJson(object): string
Serialises the input object in JSON format

## fromJson(string): object
Deserialises the JSON string as an object

## toFriendlyString(object): string
Converts the object to a readable string

## toHtmlTable(dictionary): string
Generates HTML text for a 2-column table (without "table" and "th" tags)

## toComparisonHtmlTable(dictionary, dictionary): string
Generates HTML text for a 3-column comparison table (without "table" and "th" tags)

## getKeys(dictionary): array
Returns the attributes of the object

## encrypt(plaintext, passphrase): string
Symmetric encryption with auto salt

## decrypt(ciphertext, passphrase): string
Symmetric decryption
