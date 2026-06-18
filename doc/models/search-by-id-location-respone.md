
# Search by Id Location Respone

## Structure

`SearchByIdLocationRespone`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | Unique Internal identifier used to refer to this Location by Shell Recharge |
| `external_id` | `String` | Optional | Identifier as given by the Shell Recharge Operator, unique for that Operator |
| `coordinates` | [`Coordinates`](../../doc/models/coordinates.md) | Optional | Coordinates of the Shell Recharge Site Location |
| `operator_name` | `String` | Optional | Operator of this Shell Recharge Location |
| `address` | [`Address`](../../doc/models/address.md) | Optional | Address of the Shell Recharge Location |
| `accessibility` | [`AccessibilityV2`](../../doc/models/accessibility-v2.md) | Optional | Accessibility of the Location |
| `evses` | [`Array[SearchByIdEvse]`](../../doc/models/search-by-id-evse.md) | Optional | - |
| `opening_hours` | [`Array[OpeningHoursObject]`](../../doc/models/opening-hours-object.md) | Optional | Optional Opening Hours of the Location. Please note that it is not available for all sites. |
| `updated` | `String` | Optional | ISO8601-compliant UTC datetime of the last update of the location |
| `location_type` | `String` | Optional | the type of the location. Could be "UNKNOWN". |
| `operator_id` | `String` | Optional | Unique Id of the operator |
| `open_twenty_four_seven` | `TrueClass \| FalseClass` | Optional | Whether the location is open 24/7 |

## Example

```ruby
search_by_id_location_respone = SearchByIdLocationRespone.new(
  'NL*MKS*E0000001*0',
  '01001188',
  Coordinates.new(
    39.14,
    36.94
  ),
  'TheNewMotion',
  Address.new(
    'streetAndNumber2',
    'postalCode8',
    'city6',
    'country0'
  ),
  AccessibilityV2.new(
    envrr
  ),
  [],
  [],
  '2021-10-06T10:44:24Z',
  'Unknown',
  'AT-HTB',
  true
)
```

