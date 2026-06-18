
# V2 Charge Session Start 404 Error Exception

## Structure

`V2ChargeSessionStart404ErrorException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | requestId is unique identifier value that is attached to requests and messages that allow reference to a particular transaction or event chain. |
| `status` | `String` | Optional | Status of the request |
| `errors` | [`Array[NotFoundErrMsg]`](../../doc/models/not-found-err-msg.md) | Optional | Exception details of the error |

## Example

```ruby
begin
  # make the API call
rescue V2ChargeSessionStart404ErrorException => e
  puts "Caught V2ChargeSessionStart404ErrorException: #{e.message}"
end
```

