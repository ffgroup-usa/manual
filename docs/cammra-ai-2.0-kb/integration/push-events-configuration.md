---
sidebar_position: 4
title: Push Events Configuration
---

# Push Events Configuration

![Push Events Interface](./img/push-events-1.png)

To send the recognized data to other applications such as VMS (Video Management Systems) or Data Management Systems, you can utilize FF-Events in CAMMRA AI.

Follow these steps to set up event sending:

1. **Go to the application's web page and select the "INTEGRATION" tab.**

2. **Select Profile** to configure: up to 3 profiles are supported.

3. **Select the Protocol:** Choose the appropriate protocol for sending events.
   The commonly used options are TCP (Transmission Control Protocol) and HTTP POST (Hypertext Transfer Protocol with POST method).
   You can also choose other protocols like FTP, UTMC, or UTMC-2 based on your specific requirements.

   ### TCP
   To send data to external applications, the TCP protocol is used. The camera establishes a TCP connection with the specified URL and sends data over the socket.
   The external application should open a TCP socket and listen for incoming data.

   ### HTTP POST
   To send JSON data and images to a web service, the multipart POST HTTP(s) request method is used.
   The data transferred includes a JSON payload containing the event description and the associated image.

   **Data Structure:**
   Refer to the FF protocol documentation or the API FF Integration HTTP POST JSON for the data structure details.
   This documentation provides the necessary guidelines for formatting the data to be sent.

4. **Configure Server URL:**
   Specify the link or URL where you want to send the data.
   This could be the endpoint of the receiving application or system.
   You can explicitly define URL starting with HTTP (ex. `http://ip:port/listener.php`) in case camera Network configuration allows both, HTTP and HTTPS, but your server is only configured to use HTTP.

5. **Set Device ID:**
   Assign a unique identifier to the packets sent from the camera.
   This helps in distinguishing and tracking the data packets.

6. **Define Event Types:**
   Choose the desired event types based on your requirements.
   The available event types include "New," "Update," and "Lost."
   Each event type corresponds to specific conditions and triggers for sending data.

   ### New Event
   This event occurs when a vehicle is detected for the first time. The direction of the vehicle is undefined.

   ### Reliable Event
   Consolidated event that provides a single, actionable recognition result.
   Triggered when either: Recognition conditions reach sufficient reliability, or a timeout elapses (default: 1.0 second).
   Guarantees that the event contains complete and reasonably accurate recognition data (license plate, attributes, and direction if available).
   Intended for real-time systems that cannot wait until the vehicle leaves the scene.
   **Example:** access control, where a barrier must open as soon as a valid license plate is recognized.

   ### Update Event
   This event occurs when there is a change in the data package.
   It can include updates to the recognized license plate, calculation and addition of direction, or changes in the recognition zone.

   ### Lost Event
   This event occurs when a detected vehicle has been absent from the recognition zone for more than 10 seconds.

7. **Send two images:**
   Sending of two Images now supported, second photo is always the license plate crop, first is the selected one (vehicle crop, full frame, downsized frame).

By configuring these settings, you can establish the communication and data exchange between CAMMRA AI and other applications or systems. This enables you to seamlessly integrate the recognized data into your preferred workflow and utilize it for further analysis or processing.
