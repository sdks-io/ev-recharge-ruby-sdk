
# Single Location Marker Response V2

## Structure

`SingleLocationMarkerResponseV2`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `UUID \| String` | Optional | requestId is unique identifier value that is attached to requests and messages that allow reference to a particular transaction or event chain. |
| `status` | `String` | Optional | status of the API call |
| `data` | Array[[SingleLocationMarkerV2](../../doc/models/single-location-marker-v2.md) \| [MultiLocationMarkerV2](../../doc/models/multi-location-marker-v2.md)] \| nil | Optional | - |

## Example

```ruby
single_location_marker_response_v2 = SingleLocationMarkerResponseV2.new(
  '9d2dee33-7803-485a-a2b1-2c7538e597ee',
  'SUCCESS',
  [
    SingleLocationMarkerV2.new(
      'SingleLocation',
      SingleLocationMarkerStatusEnum::UNAVAILABLE,
      Coordinates.new(
        39.14,
        36.94
      ),
      223.04,
      45.08,
      62.98,
      nil,
      []
    ),
    SingleLocationMarkerV2.new(
      'SingleLocation',
      SingleLocationMarkerStatusEnum::UNAVAILABLE,
      Coordinates.new(
        39.14,
        36.94
      ),
      223.04,
      45.08,
      62.98,
      nil,
      []
    ),
    SingleLocationMarkerV2.new(
      'SingleLocation',
      SingleLocationMarkerStatusEnum::UNAVAILABLE,
      Coordinates.new(
        39.14,
        36.94
      ),
      223.04,
      45.08,
      62.98,
      nil,
      []
    )
  ]
)
```

