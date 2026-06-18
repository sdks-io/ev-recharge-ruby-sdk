
# Unauthorized Exception

## Structure

`UnauthorizedException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | requestId or correlation id of the message |
| `status` | `String` | Optional | Status of the request |
| `errors` | [`Array[UnauthorizedErrMsg]`](../../doc/models/unauthorized-err-msg.md) | Optional | Exception details of the error |

## Example

```ruby
begin
  # make the API call
rescue UnauthorizedException => e
  puts "Caught UnauthorizedException: #{e.message}"
end
```

