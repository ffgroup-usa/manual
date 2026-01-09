---
sidebar_position: 3
title: License Plate Lists
---

# Managing License Plate Lists

![License plate lists](../img/image33.png)

CAMMRA AI offers the functionality to add license plates to both the Block list and Allow list. You can add license plates directly through the web interface or import them from a CSV file.

## Adding License Plates

1. Access the CAMMRA AI application's web page
2. Navigate to the **LISTS** section
3. Enter the license plate number directly or use a pattern with wildcards

## Using Wildcards

| Wildcard | Meaning | Example | Matches |
|----------|---------|---------|--------|
| `?` | Any single character | `SL???` | SL123, SLABC, etc. |
| `*` | Any number of characters | `M*` | M1, M123, MABC123, etc. |

### Examples

- **`SL???`** - Matches license plates starting with "SL" followed by any three characters
- **`M*`** - Matches license plates starting with "M" followed by any number of characters
- **`*ABC`** - Matches license plates ending with "ABC"

## List Description

Optionally, provide a description for each listed license plate for reference purposes. This helps identify why a specific plate was added to the list.

## Importing from CSV

You can bulk import license plates from a CSV file for easier management of large lists.
