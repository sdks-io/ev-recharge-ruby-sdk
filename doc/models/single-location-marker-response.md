
# Single Location Marker Response

## Structure

`SingleLocationMarkerResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `UUID \| String` | Optional | requestId is unique identifier value that is attached to requests and messages that allow reference to a particular transaction or event chain. |
| `status` | `String` | Optional | status of the API call |
| `data` | Array[[SingleLocationMarker](../../doc/models/single-location-marker.md) \| [MultiLocationMarker](../../doc/models/multi-location-marker.md)] \| nil | Optional | - |

## Example

```ruby
single_location_marker_response = SingleLocationMarkerResponse.new(
  '9d2dee33-7803-485a-a2b1-2c7538e597ee',
  'SUCCESS',
  [
    SingleLocationMarker.new(
      'SingleLocation',
      'uniqueKey2',
      SingleLocationMarkerStatusEnum::AVAILABLE,
      Coordinates1.new(
        39.14,
        36.94
      ),
      26.34,
      241.78,
      nil,
      nil,
      []
    ),
    SingleLocationMarker.new(
      'SingleLocation',
      'uniqueKey2',
      SingleLocationMarkerStatusEnum::AVAILABLE,
      Coordinates1.new(
        39.14,
        36.94
      ),
      26.34,
      241.78,
      nil,
      nil,
      []
    ),
    SingleLocationMarker.new(
      'SingleLocation',
      'uniqueKey2',
      SingleLocationMarkerStatusEnum::AVAILABLE,
      Coordinates1.new(
        39.14,
        36.94
      ),
      26.34,
      241.78,
      nil,
      nil,
      []
    )
  ]
)
```

