
# Unauthorized Err Msg

## Structure

`UnauthorizedErrMsg`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Optional | Error code |
| `message` | `String` | Optional | Error desctiption in English |
| `description` | `String` | Optional | Technical details of the error message, the example which is given in the sample payload is one of the scenarios. actual response will vary based on the technical nature |
| `details` | `Array[String]` | Optional | - |

## Example

```ruby
unauthorized_err_msg = UnauthorizedErrMsg.new(
  'E0003',
  'Unauthorized',
  'Invalid Access Token',
  [
    'details1'
  ]
)
```

