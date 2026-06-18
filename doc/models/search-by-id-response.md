
# Search by Id Response

## Structure

`SearchByIdResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `UUID \| String` | Optional | requestId is unique identifier value that is attached to requests and messages that allow reference to a particular transaction or event chain. |
| `status` | `String` | Optional | status of the API call |
| `data` | [`Array[SearchByIdLocationRespone]`](../../doc/models/search-by-id-location-respone.md) | Optional | API Response |

## Example

```ruby
search_by_id_response = SearchByIdResponse.new(
  '9d2dee33-7803-485a-a2b1-2c7538e597ee',
  'SUCCESS',
  [
    SearchByIdLocationRespone.new(
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
    SearchByIdLocationRespone.new(
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

