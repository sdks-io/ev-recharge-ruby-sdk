
# Location Marker V2

## Data Type

`SingleLocationMarkerV2 | MultiLocationMarkerV2`

## Cases

| Type |
|  --- |
| [`SingleLocationMarkerV2`](../../../doc/models/single-location-marker-v2.md) |
| [`MultiLocationMarkerV2`](../../../doc/models/multi-location-marker-v2.md) |

## SingleLocationMarkerV2

### Initialization Code

#### Example

```ruby
value = SingleLocationMarkerV2.new(
  'SingleLocation',
  SingleLocationMarkerStatusEnum::AVAILABLE,
  Coordinates.new,
  12,
  nil,
  6,
  '2057411',
  [],
  'TheNewMotion'
)
```

## MultiLocationMarkerV2

### Initialization Code

#### Example

```ruby
value = MultiLocationMarkerV2.new(
  'MultiLocation',
  Coordinates.new,
  6,
  10,
  42,
  'TheNewMotion'
)
```

