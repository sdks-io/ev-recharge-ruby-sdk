
# Serviceunavailable Exception

## Structure

`ServiceunavailableException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | requestId is unique identifier value that is attached to requests and messages that allow reference to a particular transaction or event chain. |
| `status` | `String` | Optional | Status of the request |
| `errors` | [`Array[ServiceunavailableErrMsg]`](../../doc/models/serviceunavailable-err-msg.md) | Optional | Exception details of the error |

## Example

```ruby
begin
  # make the API call
rescue ServiceunavailableException => e
  puts "Caught ServiceunavailableException: #{e.message}"
end
```

