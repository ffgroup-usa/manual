---
sidebar_position: 3
title: Adjusting Camera Settings
---

# Adjusting Camera Settings

## Optimal Camera Settings for License Plate Recognition

- **Autofocus:** Set the autofocus area to cover the license plate and click Autofocus. Fine-tune the focus manually if necessary to ensure the license plate appears sharp and clear.

- **Wide Dynamic Range:** Disable this setting to prevent overexposure in high-contrast scenes.

- **Contrast:** Set the contrast value to 65.

- **Local Contrast:** Set the local contrast to 65. This reduces noise during nighttime while maintaining sufficient visibility of license plates. Adjust this value if required, but be aware that it may increase noise levels.

- **Tone Mapping:** Set the tone mapping value to 20.

- **IR-Cut Filter:** Set it to "Auto" to allow the camera to automatically adjust the IR-cut filter based on lighting conditions.

- **Max Shutter:** Set the maximum shutter speed to 1/500 to optimize image sharpness and clarity.

- **Max Gain:** Adjust the maximum gain to 21 dB to achieve an optimal balance between reducing motion blur and controlling noise levels. If license plates appear overexposed, decrease the max gain to 9 dB.

- **Lock Aperture:** Disable this setting to allow the camera's iris to operate in automatic mode, especially if the vehicle is exposed to direct sunlight.

## Resolution Recommendations

| One lane | Two lanes |
|----------|----------|
| FULL HD resolution | North American and GCC plates, 4K resolution |
| | EU + South African plates, FULL HD resolution |

![One Lane Example](./img/camera-settings-1.jpg)

![Two Lanes Example](./img/camera-settings-2.jpg)

Pixel density, achieved with 4K camera resolution for EU + South African plates, allows capturing the width of three lanes. However, due to the limited performance of the IR backlight during nighttime, installation for covering three-lane traffic is not recommended.

## License Plate Size

Navigate to the camera's installation settings. Enable the pixel counter and check that the width of a single-row license plate is not less than about 130 pixels.

(See Recommended License Plate Size for different plate types in the Camera mounting recommendations article)

Adjust the camera's position if needed to meet these size requirements.

![Axis Camera Settings](./img/camera-settings-3.png)
