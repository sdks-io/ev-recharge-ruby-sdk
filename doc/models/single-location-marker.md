
# Single Location Marker

A Marker is a place on the map that represent a single Location

## Structure

`SingleLocationMarker`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `marker_type` | `String` | Required | Identifies the marker type. If it’s a `SingleLocationMarker`, then the value is `SingleLocation` |
| `unique_key` | `String` | Optional | Uniquely identifies the marker object |
| `status` | [`SingleLocationMarkerStatusEnum`](../../doc/models/single-location-marker-status-enum.md) | Optional | Minimum of all status values in the Marker, e.g. if at least one Evse in the Marker is available, the value will be available |
| `coordinates` | [`Coordinates`](../../doc/models/coordinates.md) | Optional | Coordinates of the Shell Recharge Site Location |
| `evse_count` | `Float` | Optional | Total number of Evse units in Locations that this Marker represents |
| `max_power` | `Float` | Optional | Maximum power in kW across all locations grouped in this marker (disregarding availability) |
| `geo_hash` | `String` | Optional | GeoHash of marker coordinates |
| `location_uid` | `Float` | Optional | Unique ID of the Location this Marker represents |
| `authorization_methods` | [`Array<SingleLocationMarkerAuthorizationMethodsItemsEnum>`](../../doc/models/single-location-marker-authorization-methods-items-enum.md) | Optional | Methods that can be used to Authorize sessions on this EVSE |
| `operator_id` | `String` | Optional | Unique Id of the operator |

## Example (as JSON)

```json
{
  "markerType": "SingleLocation",
  "uniqueKey": "2057411_1",
  "status": "Available",
  "evseCount": 12.0,
  "maxPower": 42.0,
  "geoHash": "sx",
  "locationUid": 2057411,
  "operatorId": "AT-HTB",
  "coordinates": {
    "latitude": 39.14,
    "longitude": 36.94
  }
}
```

