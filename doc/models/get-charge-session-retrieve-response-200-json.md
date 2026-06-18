
# Get Charge Session Retrieve Response 200 Json

## Structure

`GetChargeSessionRetrieveResponse200Json`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `UUID \| String` | Required, Read-only | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the request. |
| `status` | [`GetChargeSessionRetrieveResponse200JsonStatusEnum`](../../doc/models/get-charge-session-retrieve-response-200-json-status-enum.md) | Required, Read-only | **Constraints**: *Minimum Length*: `6`, *Maximum Length*: `15` |
| `data` | [`Array[DataRetrieve]`](../../doc/models/data-retrieve.md) | Optional | - |

## Example

```ruby
get_charge_session_retrieve_response200_json = GetChargeSessionRetrieveResponse200Json.new(
  '9d2dee33-7803-485a-a2b1-2c7538e597ee',
  GetChargeSessionRetrieveResponse200JsonStatusEnum::SUCCESS,
  [
    DataRetrieve.new(
      '00001c2a-0000-0000-0000-000000000000',
      'userId0',
      'emaId8',
      'evseId2',
      'lastUpdated0',
      DateTimeHelper.from_rfc3339(nil),
      nil,
      ChargeRetrieveState.new(
        nil,
        ChargeError.new
      )
    ),
    DataRetrieve.new(
      '00001c2a-0000-0000-0000-000000000000',
      'userId0',
      'emaId8',
      'evseId2',
      'lastUpdated0',
      DateTimeHelper.from_rfc3339(nil),
      nil,
      ChargeRetrieveState.new(
        nil,
        ChargeError.new
      )
    )
  ]
)
```

