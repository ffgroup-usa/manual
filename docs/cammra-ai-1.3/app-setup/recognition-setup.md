---
sidebar_position: 1
title: Recognition Setup
---

# Recognition Setup

## Region of Interest (ROI)

1. **Access the Application's Web Page**: Launch a web browser and enter the URL or IP address of the CAMMRA AI application's web page.

2. **Navigate to the Recognition Setup Tab**: On the CAMMRA AI web page.

3. **Define the Region of Interest (ROI)**:
   - Usually 1 ROI is enough and enables smoothest functioning
   - You can set up to 2 ROIs
   - Keep ROIs as much as possible in the centre of the camera view
   - Ideally whole vehicle fits into the ROI
   - Avoid placing ROIs at the edges of the image (may impact detection accuracy)

4. **Set the Car Movement Direction**: Orient the arrow in the direction of the traffic flow. The detected direction will be displayed in the Direction column within the Events log.

![ROI setup](../img/image9.png)

![ROI direction](../img/image34.png)

## Location Setup

On the **RECOGNITION SETUP** page, choose location settings according to the camera location. Correct regional settings will help CAMMRA AI classify captured license plates.

### Configuration Options

1. **Region**: Choose the supported regions based on your deployment location:
   - Europe (including Turkey and Israel)
   - CIS, EU+CIS
   - GCC (Middle-East)
   - South Africa
   - Australia, New Zealand
   - North and South America
   - Asian countries (LPR only, MMR may have lower accuracy)

2. **Preferred Country**: Select country where the camera is located.

3. **Preferred State**: For USA, Canada, Mexico - select state where the camera is located.

:::note
Preferred country and state selection will not limit recognition to the license plates of that country or state, but will help the algorithm to classify captured plates more accurately. Other countries from the regions are still recognized properly.
:::
