---
sidebar_position: 2
title: Camera Settings
---

# Adjusting Camera Settings

Optimal Camera Settings for License Plate Recognition.

To ensure accurate license plate recognition, it is important to configure the camera settings appropriately.

## 1. Positioning the Vehicle

Adjust camera position, angle and zoom so that vehicles are ideally completely within the region of interest (ROI) to ensure that the license plate occupies a sufficient area for detection and recognition.

## 2. License Plate Size

Navigate to the camera's installation settings:
1. Enable the pixel counter
2. Check that the width of a single-row license plate is not less than about 100 pixels (130 px is recommended)
3. Two-row license plates should be at least 80 px wide
4. Adjust the camera's position if needed to meet these size requirements

![Pixel counter](../img/image40.png)

## 3. Image Adjustments

Access the camera's webpage and go to the **Image** tab to make the following adjustments:

| Setting | Recommended Value | Notes |
|---------|-------------------|-------|
| **Autofocus** | Cover the license plate area | Fine-tune manually if necessary |
| **Wide Dynamic Range** | Disabled | Prevents overexposure (can leave on for Q1800-LE) |
| **Contrast** | 65 | - |
| **Local Contrast** | 65 | Reduces noise during nighttime |
| **Tone Mapping** | 20 | - |
| **IR-Cut Filter** | Auto | Adjusts based on lighting conditions |
| **Max Shutter** | 1/500 | Use 1/1000 for higher speeds |
| **Max Gain** | 21 dB | Decrease to 9 dB if plates appear overexposed |
| **Lock Aperture** | Disabled | Allows automatic iris operation |

## 4. Testing and Evaluation

Test the camera settings by observing a vehicle in the region of interest under various lighting conditions:

- Perform tests in both low-light and daylight scenarios
- Adjust settings according to local conditions
- Ensure settings are well-adjusted for optimal performance during different times of day

:::tip
By following these steps and fine-tuning the camera settings, you can optimize license plate visibility and enhance the accuracy of license plate recognition within CAMMRA AI.
:::
