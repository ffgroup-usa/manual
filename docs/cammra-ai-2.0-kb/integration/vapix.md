---
sidebar_position: 2
title: VAPIX
---

# VAPIX

CAMMRA AI supports VAPIX events that can be used for integration with Video Management Systems (VMS) and other third-party applications.

## Supported Events

| Event | Description |
|-------|-------------|
| **LPR** | General event with metadata. Available always. Event contains all data from LPR engine. Event can be sent several times per one license plate: NEW - first license plate detection, UPDATE - if something changes in LPR package, LOST - when vehicle left the frame (+10 s after the last detection) |
| **LPR.Allow_list** | Triggered event when plate matches Allow list. Available only when any relay is connected. |
| **LPR.Block_list** | Triggered event when plate matches Block list. Available only when any relay is connected. |
| **LPR.Custom_list** | Triggered event when plate matches Custom list. Available only when any relay is connected. |
| **LPR.NotInList** | Triggered event when plate is not in any list. Available only when any relay is connected. |
| **LPR.PlateIN** | Triggered event for incoming plates. Available only when any relay is connected. |
| **LPR.PlateOUT** | Triggered event for outgoing plates. Available only when any relay is connected. |
| **LPR.PlateInView** | Triggered event when plate is in view. |
| **LPR.New** | First detection of a license plate. |
| **LPR.Update** | Update event when something changes in LPR package. |
| **LPR.Lost** | Event when vehicle left the frame. |
| **LPR.RealTime** | Real-time LPR event. |
| **LPR.Roi1** | Event for Region of Interest 1. |
| **LPR.Roi2** | Event for Region of Interest 2. |
| **VMMCR** | Vehicle Make Model Color Recognition event. |
| **VMMCR.Truck** | Truck detection event. |

## LPR Event Example

```xml
<tt:MetadataStream xmlns:tt="http://www.onvif.org/ver10/schema">
  <tt:Event xmlns:tt="http://www.onvif.org/ver10/schema">
    <wsnt:NotificationMessage xmlns:tns1="http://www.onvif.org/ver10/topics" 
      xmlns:tnsaxis="http://www.axis.com/2009/event/topics" 
      xmlns:wsnt="http://docs.oasis-open.org/wsn/b-2" 
      xmlns:wsa5="http://www.w3.org/2005/08/addressing">
      <wsnt:Topic Dialect="http://docs.oasis-open.org/wsn/t-1/TopicExpression/Simple">
        tnsaxis:CameraApplicationPlatform/LPR
      </wsnt:Topic>
      <wsnt:ProducerReference>
        <wsa5:Address>uri://c37d4bf5-fa69-498d-8294-e0c8ade51ded/ProducerReference</wsa5:Address>
      </wsnt:ProducerReference>
      <wsnt:Message>
        <tt:Message UtcTime="2021-05-17T13:40:12.509000Z">
          <tt:Source/>
          <tt:Data>
            <tt:SimpleItem Name="consumedTime" Value="104" />
            <tt:SimpleItem Name="frame_timestamp" Value="1039287603" />
            <tt:SimpleItem Name="carMoveDirection" Value="unknown" />
            <tt:SimpleItem Name="carState" Value="new" />
            <tt:SimpleItem Name="action" Value="No action" />
            <tt:SimpleItem Name="capture_timestamp" Value="1621258812509" />
            <tt:SimpleItem Name="width" Value="192" />
            <tt:SimpleItem Name="carID" Value="1087595" />
            <tt:SimpleItem Name="top" Value="564" />
            <tt:SimpleItem Name="country" Value="PRT" />
            <tt:SimpleItem Name="left" Value="625" />
            <tt:SimpleItem Name="height" Value="32" />
            <tt:SimpleItem Name="listName" Value="" />
            <tt:SimpleItem Name="text" Value="RZ3160" />
          </tt:Data>
        </tt:Message>
      </wsnt:Message>
    </wsnt:NotificationMessage>
  </tt:Event>
</tt:MetadataStream>
```

## List Events Example (Allow_list, Block_list, Custom_list, NotInList)

The name of the events depends on the list name in the application.

```xml
<tt:MetadataStream xmlns:tt="http://www.onvif.org/ver10/schema">
  <tt:Event xmlns:tt="http://www.onvif.org/ver10/schema">
    <wsnt:NotificationMessage xmlns:tns1="http://www.onvif.org/ver10/topics" 
      xmlns:tnsaxis="http://www.axis.com/2009/event/topics" 
      xmlns:wsnt="http://docs.oasis-open.org/wsn/b-2" 
      xmlns:wsa5="http://www.w3.org/2005/08/addressing">
      <wsnt:Topic Dialect="http://docs.oasis-open.org/wsn/t-1/TopicExpression/Simple">
        tnsaxis:CameraApplicationPlatform/ALPV.NotInList
      </wsnt:Topic>
      <wsnt:ProducerReference>
        <wsa5:Address>uri://c37d4bf5-fa69-498d-8294-e0c8ade51ded/ProducerReference</wsa5:Address>
      </wsnt:ProducerReference>
      <wsnt:Message>
        <tt:Message UtcTime="2021-05-17T15:42:54.961154Z" PropertyOperation="Changed">
          <tt:Source/>
          <tt:Key/>
          <tt:Data>
            <tt:SimpleItem Name="active" Value="0" />
          </tt:Data>
        </tt:Message>
      </wsnt:Message>
    </wsnt:NotificationMessage>
  </tt:Event>
</tt:MetadataStream>
```

### Active Values

- `active = 1` - Event triggered (plate detected matching condition)
- `active = 0` - Event cleared

## PlateIN/PlateOUT Events Example

```xml
<tt:MetadataStream xmlns:tt="http://www.onvif.org/ver10/schema">
  <tt:Event xmlns:tt="http://www.onvif.org/ver10/schema">
    <wsnt:NotificationMessage xmlns:tns1="http://www.onvif.org/ver10/topics" 
      xmlns:tnsaxis="http://www.axis.com/2009/event/topics" 
      xmlns:wsnt="http://docs.oasis-open.org/wsn/b-2" 
      xmlns:wsa5="http://www.w3.org/2005/08/addressing">
      <wsnt:Topic Dialect="http://docs.oasis-open.org/wsn/t-1/TopicExpression/Simple">
        tnsaxis:CameraApplicationPlatform/ALPV.PlateIn
      </wsnt:Topic>
      <wsnt:ProducerReference>
        <wsa5:Address>uri://c37d4bf5-fa69-498d-8294-e0c8ade51ded/ProducerReference</wsa5:Address>
      </wsnt:ProducerReference>
      <wsnt:Message>
        <tt:Message UtcTime="2021-05-17T16:24:19.596468Z" PropertyOperation="Changed">
          <tt:Source/>
          <tt:Key/>
          <tt:Data>
            <tt:SimpleItem Name="active" Value="1" />
          </tt:Data>
        </tt:Message>
      </wsnt:Message>
    </wsnt:NotificationMessage>
  </tt:Event>
</tt:MetadataStream>
```
