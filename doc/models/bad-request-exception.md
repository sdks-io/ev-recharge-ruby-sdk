
# Bad Request Exception

## Structure

`BadRequestException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | requestId is unique identifier value that is attached to requests and messages that allow reference to a particular transaction or event chain. |
| `status` | `String` | Optional | Status of the request |
| `errors` | [`Array[BadRequestErrMsg]`](../../doc/models/bad-request-err-msg.md) | Optional | Exception details of the error |

## Example

```ruby
begin
  # make the API call
rescue BadRequestException => e
  puts "Caught BadRequestException: #{e.message}"
end
```

