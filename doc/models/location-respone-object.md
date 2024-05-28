
# Location Respone Object

## Structure

`LocationResponeObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `Integer` | Optional | Unique Internal identifier used to refer to this Location by Shell Recharge |
| `external_id` | `String` | Optional | Identifier as given by the Shell Recharge Operator, unique for that Operator |
| `coordinates` | [`Coordinates`](../../doc/models/coordinates.md) | Optional | Coordinates of the Shell Recharge Site Location |
| `operator_name` | `String` | Optional | Operator of this Shell Recharge Location |
| `address` | [`Address`](../../doc/models/address.md) | Optional | Address of the Shell Recharge Location |
| `accessibility` | [`Accessibility`](../../doc/models/accessibility.md) | Optional | Accessibility of the Location |
| `evses` | [`Array<EvseVO>`](../../doc/models/evse-vo.md) | Optional | - |
| `opening_hours` | [`Array<OpeningHoursObject>`](../../doc/models/opening-hours-object.md) | Optional | Optional Opening Hours of the Location. Please note that it is not available for all sites. |
| `updated` | `String` | Optional | ISO8601-compliant UTC datetime of the last update of the location |
| `operator_comment` | `String` | Optional | optional Operator-wide arbitrary text (eg promotional, warning) |
| `location_type` | `String` | Optional | the type of the location. Could be "UNKNOWN". |

## Example (as JSON)

```json
{
  "uid": 12,
  "externalId": "01001188",
  "operatorName": "TheNewMotion",
  "updated": "10/06/2021 10:44:24",
  "operatorComment": "promotional",
  "locationType": "Unknown",
  "coordinates": {
    "latitude": 39.14,
    "longitude": 36.94
  },
  "address": {
    "streetAndNumber": "streetAndNumber2",
    "postalCode": "postalCode8",
    "city": "city6",
    "country": "country0"
  }
}
```

