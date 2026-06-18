
# Not Found Err Msg

## Structure

`NotFoundErrMsg`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Optional | Error code |
| `message` | `String` | Optional | Error desctiption in English |
| `description` | `String` | Optional | Technical details of the error message, the example which is given in the sample payload is one of the scenarios. actual response will vary based on the technical nature |
| `details` | `Array[String]` | Optional | - |

## Example

```ruby
not_found_err_msg = NotFoundErrMsg.new(
  'E0038',
  'Not Found',
  'Requested API resource not found',
  [
    'details1',
    'details2'
  ]
)
```

