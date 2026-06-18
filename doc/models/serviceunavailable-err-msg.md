
# Serviceunavailable Err Msg

## Structure

`ServiceunavailableErrMsg`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Optional | Error code |
| `message` | `String` | Optional | Error desctiption in English |
| `description` | `String` | Optional | Technical details of the error message, the example which is given in the sample payload is one of the scenarios. actual response will vary based on the technical nature |
| `details` | `Array[String]` | Optional | - |

## Example

```ruby
serviceunavailable_err_msg = ServiceunavailableErrMsg.new(
  'E0014',
  'Connectivity Error',
  'Service Unavailable',
  [
    'details7'
  ]
)
```

