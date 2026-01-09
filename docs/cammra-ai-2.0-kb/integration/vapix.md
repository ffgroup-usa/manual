---
sidebar_position: 1
title: VAPIX Events
---

# VAPIX Integration

CAMMRA AI supports various VAPIX events for integration with Axis ecosystem and third-party systems.

![VAPIX events](../img/image6.png)

## Supported Events

| Event | Description | Availability |
|-------|-------------|-------------|
| **LPR** | General event with metadata | Always available |
| **LPR.Allow_list** | Triggered for allow-listed plates | When relay connected |
| **LPR.Block_list** | Triggered for block-listed plates | When relay connected |
| **LPR.Custom_list** | Triggered for custom list plates | When relay connected |
| **LPR.NotInList** | Triggered for plates not in any list | When relay connected |
| **LPR.PlateIN** | Triggered for incoming vehicles | When relay connected |
| **LPR.PlateOUT** | Triggered for outgoing vehicles | When relay connected |
| **LPR.PlateInView** | Plate currently in view | - |
| **LPR.New** | First plate detection | - |
| **LPR.Update** | Data package change | - |
| **LPR.Lost** | Vehicle left frame (+10s) | - |
| **LPR.RealTime** | Real-time updates | - |
| **LPR.Roi1 / LPR.Roi2** | ROI-specific events | - |

## LPR Event States

The main LPR event can be sent several times per license plate:

- **NEW** - First license plate detection
- **UPDATE** - When something changes in LPR package
- **LOST** - When vehicle left the frame (+10 seconds after last detection)

## Event Data Fields

The LPR event contains comprehensive metadata:

| Field | Description |
|-------|-------------|
| `vehicleMake` | Vehicle manufacturer (e.g., Ford) |
| `vehicleModel` | Vehicle model (e.g., Tourneo Connect) |
| `vehicleType` | Vehicle type (e.g., VAN, CAR, SUV) |
| `vehicleColor` | Vehicle color |
| `vehicleConfidence` | MMR confidence score |
| `text` | License plate text |
| `lpConfidence` | LPR confidence score |
| `country` | Plate country code |
| `region` | Plate region |
| `carMoveDirection` | Direction (in/out/unknown) |
| `carState` | Event state (new/update/lost) |
| `roiID` | Region of Interest ID |
| `listName` | Matched list name |
| `listMode` | List mode (allow/block/none) |
| `capture_timestamp` | Event timestamp |

## Example Event (XML)

```xml
<tt:MetadataStream xmlns:tt="http://www.onvif.org/ver10/schema">
  <tt:Event>
    <wsnt:NotificationMessage>
      <wsnt:Topic>tnsaxis:CameraApplicationPlatform/LPR</wsnt:Topic>
      <wsnt:Message>
        <tt:Message UtcTime="2021-05-17T13:40:12.509000Z">
          <tt:Data>
            <tt:SimpleItem Name="vehicleMake" Value="Ford" />
            <tt:SimpleItem Name="vehicleModel" Value="Tourneo Connect" />
            <tt:SimpleItem Name="vehicleType" Value="VAN" />
            <tt:SimpleItem Name="vehicleColor" Value="RED" />
            <tt:SimpleItem Name="text" Value="5SL5596" />
            <tt:SimpleItem Name="lpConfidence" Value="0.856800" />
            <tt:SimpleItem Name="country" Value="CZE" />
            <tt:SimpleItem Name="carMoveDirection" Value="unknown" />
            <tt:SimpleItem Name="carState" Value="new" />
          </tt:Data>
        </tt:Message>
      </wsnt:Message>
    </wsnt:NotificationMessage>
  </tt:Event>
</tt:MetadataStream>
```
