
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

## Example (as JSON)

```json
{
  "startTime": "08:00",
  "endTime": "18:00",
  "startDate": "2021-10-06",
  "endDate": "2021-10-31",
  "minKwh": 0.1,
  "maxKwh": 100,
  "minCurrent": 0,
  "maxCurrent": 500,
  "minPower": 0,
  "maxPower": 100,
  "minDuration": 0,
  "maxDuration": 86400
}
```

