
# Location Respone Object V2

## Structure

`LocationResponeObjectV2`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | Unique Internal identifier used to refer to this Location by Shell Recharge |
| `external_id` | `String` | Optional | Identifier as given by the Shell Recharge Operator, unique for that Operator |
| `coordinates` | [`Coordinates`](../../doc/models/coordinates.md) | Optional | Coordinates of the Shell Recharge Site Location |
| `operator_name` | `String` | Optional | Operator of this Shell Recharge Location |
| `address` | [`Address`](../../doc/models/address.md) | Optional | Address of the Shell Recharge Location |
| `accessibility` | [`AccessibilityV2`](../../doc/models/accessibility-v2.md) | Optional | Accessibility of the Location |
| `evses` | [`Array[EvseV2]`](../../doc/models/evse-v2.md) | Optional | - |
| `opening_hours` | [`Array[OpeningHoursObject]`](../../doc/models/opening-hours-object.md) | Optional | Optional Opening Hours of the Location. Please note that it is not available for all sites. |
| `updated` | `String` | Optional | ISO8601-compliant UTC datetime of the last update of the location |
| `location_type` | `String` | Optional | the type of the location. Could be "UNKNOWN". |
| `operator_id` | `String` | Optional | Unique Id of the operator |
| `open_twenty_four_seven` | `TrueClass \| FalseClass` | Optional | Whether the location is open 24/7 |

## Example (as JSON)

```json
{
  "uid": "NL*MKS*E0000001*0",
  "externalId": "01001188",
  "operatorName": "TheNewMotion",
  "updated": "10/06/2021 10:44:24",
  "locationType": "Unknown",
  "operatorId": "AT-HTB",
  "openTwentyFourSeven": true,
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

