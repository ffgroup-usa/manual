---
sidebar_position: 7
title: Sample JSON Data
---

# Sample JSON Data

This is an example of the JSON data structure that CAMMRA AI sends via Push Events or HTTP POST integration.

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

## Field Descriptions

| Field | Description |
|-------|-------------|
| `carID` | Internal vehicle identifier |
| `roiID` | Region of Interest identifier |
| `geotag` | GPS coordinates (latitude/longitude) |
| `carState` | Event state (new, update, lost) |
| `datetime` | Date and time of capture |
| `plateText` | Recognized license plate text |
| `plateCountry` | Detected country code |
| `plateRegion` | Detected region |
| `plateConfidence` | LPR confidence score |
| `carMoveDirection` | Vehicle direction (in, out, unknown) |
| `camera_info` | Camera details (MAC, serial, model) |
| `vehicle_info` | Vehicle recognition data (type, brand, model, color) |
| `imagesURI` | Array of image URLs |
| `plateCoordinates` | License plate position [x, y, width, height] |
