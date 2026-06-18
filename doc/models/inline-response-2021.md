
# Inline Response 2021

## Structure

`InlineResponse2021`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `UUID \| String` | Required, Read-only | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the request. |
| `status` | [`GetChargeSessionRetrieveResponse200JsonStatusEnum`](../../doc/models/get-charge-session-retrieve-response-200-json-status-enum.md) | Required, Read-only | **Constraints**: *Minimum Length*: `6`, *Maximum Length*: `7` |

## Example

```ruby
inline_response_202_1 = InlineResponse2021.new(
  '9d2dee33-7803-485a-a2b1-2c7538e597ee',
  GetChargeSessionRetrieveResponse200JsonStatusEnum::SUCCESS
)
```

