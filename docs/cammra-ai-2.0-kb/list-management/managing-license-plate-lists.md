---
sidebar_position: 1
title: Managing License Plate Lists
---

# Managing License Plate Lists

![License Plate Lists Interface](./img/managing-lists-1.png)

CAMMRA AI offers the functionality to add license plates to both the Blocklist and Allow list. You can conveniently add license plates directly through the web interface or import them from a CSV file.

Here's how to manage the lists:

1. **Access the CAMMRA AI application's web page.**

2. **Navigate to the appropriate section or tab for managing license plate lists (LISTS).**

3. **To add a license plate to the list**, enter the license plate number directly or use a license plate pattern with wildcards.
   - For example, to add license plates starting with "SL" followed by any three characters to the block list, use the pattern "SL???". The question mark represents any single character.
   - Similarly, use an asterisk (*) to represent any number of characters in a license plate. For instance, to add license plates starting with "M" followed by any number of characters to the block list, use the pattern "M*".

4. **Optionally, describe each listed license plate for reference purposes.**

## Available Lists

- **Allow List** - Whitelisted plates that trigger allow events
- **Block List** - Blacklisted plates that trigger block events
- **Custom List** - Custom list for specific use cases

## Camera Sync

You can share license plate lists across multiple cameras on the same network. This synchronization process will **override any existing license plate lists** on the target camera.

### Steps to Share License Plate Lists:

1. **Enter Camera Synchronization Details**
   Input the **IP address**, **username**, and **password** of the camera you want to share list with.

2. **Add Camera to Sync List**
   Click the **Add** button to include the specified camera.

3. **Start Synchronization**
   Click **Camera Synchronization** to begin sharing the license plate list.

4. **Verify Sync Completion**
   Check the **Last Sync** field to ensure the date and time have been updated correctly, confirming a successful synchronization.

## Strict Matching

Enable **Strict matching** toggle to require exact plate matches without wildcards.
