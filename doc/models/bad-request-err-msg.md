
# Bad Request Err Msg

## Structure

`BadRequestErrMsg`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Optional | Error code |
| `message` | `String` | Optional | Error desctiption in English |
| `description` | `String` | Optional | Technical details of the error message, the example which is given in the sample payload is one of the scenarios. actual response will vary based on the validation error |
| `details` | `Array[String]` | Optional | - |

## Example

```ruby
bad_request_err_msg = BadRequestErrMsg.new(
  'E0001',
  'Bad Request',
  'Authorization header is missing',
  [
    'details5'
  ]
)
```

