
# Location Marker

## Data Type

`SingleLocationMarker | MultiLocationMarker`

## Cases

| Type |
|  --- |
| [`SingleLocationMarker`](../../../doc/models/single-location-marker.md) |
| [`MultiLocationMarker`](../../../doc/models/multi-location-marker.md) |

## SingleLocationMarker

### Initialization Code

#### Example

```ruby
value = SingleLocationMarker.new(
  'SingleLocation',
  '2057411_1',
  SingleLocationMarkerStatusEnum::AVAILABLE,
  Coordinates1.new,
  12,
  42,
  'sx',
  2057411,
  [],
  'AT-HTB'
)
```

## MultiLocationMarker

### Initialization Code

#### Example

```ruby
value = MultiLocationMarker.new(
  'MultiLocation',
  '2060319_6',
  Coordinates1.new,
  6,
  10,
  42,
  'sx'
)
```

