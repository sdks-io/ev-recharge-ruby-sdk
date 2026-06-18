
# Active Response 200 Json

## Structure

`ActiveResponse200Json`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `UUID \| String` | Required, Read-only | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the request. |
| `status` | [`GetChargeSessionRetrieveResponse200JsonStatusEnum`](../../doc/models/get-charge-session-retrieve-response-200-json-status-enum.md) | Required, Read-only | **Constraints**: *Minimum Length*: `7`, *Maximum Length*: `7` |
| `data` | [`Array[DataActive]`](../../doc/models/data-active.md) | Optional | - |

## Example

```ruby
active_response200_json = ActiveResponse200Json.new(
  '9d2dee33-7803-485a-a2b1-2c7538e597ee',
  GetChargeSessionRetrieveResponse200JsonStatusEnum::SUCCESS,
  [
    DataActive.new(
      '00001c2a-0000-0000-0000-000000000000',
      'userId0',
      'emaId8',
      'evseId2',
      DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      nil,
      ChargeRetrieveState.new(
        nil,
        ChargeError.new
      )
    ),
    DataActive.new(
      '00001c2a-0000-0000-0000-000000000000',
      'userId0',
      'emaId8',
      'evseId2',
      DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      nil,
      ChargeRetrieveState.new(
        nil,
        ChargeError.new
      )
    ),
    DataActive.new(
      '00001c2a-0000-0000-0000-000000000000',
      'userId0',
      'emaId8',
      'evseId2',
      DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      nil,
      ChargeRetrieveState.new(
        nil,
        ChargeError.new
      )
    )
  ]
)
```

