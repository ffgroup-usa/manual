---
sidebar_position: 3
title: JSON Data Format
---

# Sample JSON Data

When CAMMRA AI sends events via HTTP POST or other protocols, the data is formatted as JSON.

## Example Event Data

```json
{
  "carID": "1327",
  "roiID": "1",
  "geotag": {
    "lat": 55.70421,
    "lon": 13.19366
  },
  "carState": "update",
  "datetime": "20240614 160436372",
  "GEOtarget": "Camera",
  "imageFile": "localdata/images/36/20240614160426_32557roi_1AB1234_12977.jpg",
  "imageType": "vehicle",
  "imagesURI": [
    "/local/fflprapp/tools.cgi?action=getImage&name=9/20240614160436_464953lp_1AB1234_13046.jpg",
    "/local/fflprapp/tools.cgi?action=getImage&name=36/20240614160426_32557roi_1AB1234_12977.jpg"
  ],
  "plateList": "",
  "plateText": "1AB1234",
  "plateUTF8": "1AB1234",
  "profileID": "1",
  "capture_ts": "1718373876372000000",
  "imageFile2": "localdata/images/9/20240614160436_464953lp_1AB1234_13046.jpg",
  "plateASCII": "1AB1234",
  "camera_info": {
    "MACAddress": "",
    "SerialNumber": "B8A44F960ACE",
    "ProdShortName": "AXIS Q1805-LE"
  },
  "plateRegion": "Praha",
  "plateCountry": "CZE",
  "plateUnicode": "1AB1234",
  "vehicle_info": {
    "type": "CAR",
    "view": "front",
    "brand": "Skoda",
    "color": "GRAY",
    "model": "Rapid/Scala",
    "confidenceMMR": "0.999847",
    "confidenceColor": "0.989999"
  },
  "packetCounter": "13046",
  "plateListMode": "",
  "plateISO3166-2": "",
  "plateImageSize": "0",
  "plateImageType": "jpeg",
  "timeProcessing": "0",
  "frame_timestamp": "1718373875705442",
  "plateConfidence": "0.868800",
  "plateRegionCode": "A",
  "carMoveDirection": "in",
  "plateCoordinates": [519, 633, 141, 42],
  "sensorProviderID": "PRG-82",
  "capture_timestamp": "1718373876372",
  "plateListDescription": "",
  "plateCoordinatesRelative": [519, 633, 141, 42]
}
```

## Field Reference

### Core Fields

| Field | Type | Description |
|-------|------|-------------|
| `carID` | string | Unique vehicle identifier for this session |
| `roiID` | string | Region of Interest ID where detected |
| `carState` | string | Event state: `new`, `update`, `lost` |
| `datetime` | string | Timestamp: YYYYMMDD HHMMSSmmm |
| `carMoveDirection` | string | Direction: `in`, `out`, `unknown` |

### License Plate Fields

| Field | Type | Description |
|-------|------|-------------|
| `plateText` | string | Recognized plate text |
| `plateUTF8` | string | Plate text in UTF-8 encoding |
| `plateASCII` | string | Plate text in ASCII |
| `plateCountry` | string | Country code (ISO 3166-1 alpha-3) |
| `plateRegion` | string | Region/state name |
| `plateRegionCode` | string | Region code |
| `plateConfidence` | string | LPR confidence (0-1) |
| `plateCoordinates` | array | [x, y, width, height] in pixels |

### Vehicle Fields

| Field | Type | Description |
|-------|------|-------------|
| `vehicle_info.brand` | string | Vehicle manufacturer |
| `vehicle_info.model` | string | Vehicle model |
| `vehicle_info.type` | string | Vehicle type (CAR, SUV, VAN, etc.) |
| `vehicle_info.color` | string | Vehicle color |
| `vehicle_info.view` | string | Camera view: `front` or `rear` |
| `vehicle_info.confidenceMMR` | string | Make/Model confidence (0-1) |
| `vehicle_info.confidenceColor` | string | Color confidence (0-1) |

### Camera Fields

| Field | Type | Description |
|-------|------|-------------|
| `camera_info.SerialNumber` | string | Camera serial number |
| `camera_info.ProdShortName` | string | Camera model name |
| `camera_info.MACAddress` | string | Camera MAC address |
| `sensorProviderID` | string | Custom device identifier |

### Image Fields

| Field | Type | Description |
|-------|------|-------------|
| `imageFile` | string | Path to vehicle image |
| `imageFile2` | string | Path to plate crop image |
| `imagesURI` | array | URIs to retrieve images |
| `imageType` | string | Image type: `vehicle`, `plate`, `frame` |

### List Fields

| Field | Type | Description |
|-------|------|-------------|
| `plateList` | string | List name if matched |
| `plateListMode` | string | List type: `allow`, `block`, empty |
| `plateListDescription` | string | List entry description |

### Timing Fields

| Field | Type | Description |
|-------|------|-------------|
| `capture_timestamp` | string | Unix timestamp in milliseconds |
| `capture_ts` | string | Unix timestamp in nanoseconds |
| `frame_timestamp` | string | Frame timestamp |
| `timeProcessing` | string | Processing time in ms |
