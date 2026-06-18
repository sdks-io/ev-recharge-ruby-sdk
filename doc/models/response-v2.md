
# Response V2

## Structure

`ResponseV2`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `UUID \| String` | Optional | requestId is unique identifier value that is attached to requests and messages that allow reference to a particular transaction or event chain. |
| `status` | `String` | Optional | status of the API call |
| `data` | [`Array[LocationResponeObjectV2]`](../../doc/models/location-respone-object-v2.md) | Optional | API Response |

## Example

```ruby
response_v2 = ResponseV2.new(
  '9d2dee33-7803-485a-a2b1-2c7538e597ee',
  'SUCCESS',
  [
    LocationResponeObjectV2.new(
      'uid0',
      'externalId6',
      Coordinates.new(
        39.14,
        36.94
      ),
      'operatorName0',
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
      []
    ),
    LocationResponeObjectV2.new(
      'uid0',
      'externalId6',
      Coordinates.new(
        39.14,
        36.94
      ),
      'operatorName0',
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
      []
    )
  ]
)
```

