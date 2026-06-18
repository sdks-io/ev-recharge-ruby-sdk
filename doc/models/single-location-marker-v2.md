
# Single Location Marker V2

A Marker is a place on the map that represent a single Location

## Structure

`SingleLocationMarkerV2`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | [`SingleLocationMarkerStatusEnum`](../../doc/models/single-location-marker-status-enum.md) | Optional | Minimum of all status values in the Marker, e.g. if at least one Evse in the Marker is available, the value will be available |
| `coordinates` | [`Coordinates`](../../doc/models/coordinates.md) | Optional | Coordinates of the Shell Recharge Site Location |
| `evse_count` | `Float` | Optional | Total number of Evse units in Locations that this Marker represents |
| `max_power` | `Float` | Optional | Maximum power in kW across all locations grouped in this marker (disregarding availability) |
| `location_count` | `Float` | Optional | Number of Locations that this Marker represents in the given set of bounds |
| `location_uid` | `String` | Optional | Unique ID of the Location this Marker represents |
| `authorization_methods` | [`Array[SingleLocationMarkerAuthorizationMethodsItemsEnum]`](../../doc/models/single-location-marker-authorization-methods-items-enum.md) | Optional | Methods that can be used to Authorize sessions on this EVSE |
| `operator_name` | `String` | Optional | Operator of this Shell Recharge Location |
| `marker_type` | `String` | Required, Constant | Type of the Marker, in this case it will always be SingleLocation<br><br>**Value**: `'SingleLocation'` |

## Example

```ruby
single_location_marker_v2 = SingleLocationMarkerV2.new(
  'SingleLocation',
  SingleLocationMarkerStatusEnum::AVAILABLE,
  Coordinates.new(
    39.14,
    36.94
  ),
  12,
  17,
  6,
  '2057411',
  [],
  'TheNewMotion'
)
```

