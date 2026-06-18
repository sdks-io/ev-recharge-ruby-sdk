
# Power Range

## Structure

`PowerRange`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `min` | `Integer` | Required | Minimum supported power in kW |
| `max` | `Integer` | Required | Maximum supported power in kW |

## Example

```ruby
power_range = PowerRange.new(
  0,
  100
)
```

