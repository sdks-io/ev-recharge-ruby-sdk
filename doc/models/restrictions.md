
# Restrictions

## Structure

`Restrictions`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `start_time` | `String` | Optional | Valid from this time of the day (HH:mm) |
| `end_time` | `String` | Optional | Valid until this time of the day (HH:mm) |
| `start_date` | `Date` | Optional | - |
| `end_date` | `Date` | Optional | - |
| `min_kwh` | `Float` | Optional | - |
| `max_kwh` | `Float` | Optional | - |
| `min_current` | `Float` | Optional | - |
| `max_current` | `Float` | Optional | - |
| `min_power` | `Float` | Optional | - |
| `max_power` | `Float` | Optional | - |
| `min_duration` | `Integer` | Optional | Minimum session duration in seconds |
| `max_duration` | `Integer` | Optional | Maximum session duration in seconds |
| `day_of_week` | [`Array[DayOfWeekEnum]`](../../doc/models/day-of-week-enum.md) | Optional | - |

## Example

```ruby
restrictions = Restrictions.new(
  '08:00',
  '18:00',
  Date.iso8601('2021-10-06'),
  Date.iso8601('2021-10-31'),
  0.1,
  100,
  0,
  500,
  0,
  100,
  0,
  86400,
  []
)
```

