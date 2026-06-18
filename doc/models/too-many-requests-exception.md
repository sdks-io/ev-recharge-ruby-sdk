
# Too Many Requests Exception

## Structure

`TooManyRequestsException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | RequestID is unique identifier value that is attached to requests and messages that allow reference to a particular transaction or event chain. |
| `status` | `String` | Optional | Status of the request |
| `errors` | [`Array[RatelimitErrMsg]`](../../doc/models/ratelimit-err-msg.md) | Optional | Exception details of the error |

## Example

```ruby
begin
  # make the API call
rescue TooManyRequestsException => e
  puts "Caught TooManyRequestsException: #{e.message}"
end
```

