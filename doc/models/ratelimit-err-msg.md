
# Ratelimit Err Msg

## Structure

`RatelimitErrMsg`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Optional | Error code |
| `message` | `String` | Optional | Error desctiption in English |
| `description` | `String` | Optional | Technical details of the error message, the example which is given in the sample payload is one of the scenarios. actual response will vary based on the technical nature |
| `details` | `Array[String]` | Optional | - |

## Example

```ruby
ratelimit_err_msg = RatelimitErrMsg.new(
  'E0009',
  'Too Many Requests',
  'Exceeded maximum allowed number of request limit',
  [
    'details3'
  ]
)
```

