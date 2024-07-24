
# Ratelimit Err Msg

## Structure

`RatelimitErrMsg`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Optional | Error code |
| `message` | `String` | Optional | Error desctiption in English |
| `description` | `String` | Optional | Technical details of the error message, the example which is given in the sample payload is one of the scenarios. actual response will vary based on the technical nature |
| `details` | `Array<String>` | Optional | - |

## Example (as JSON)

```json
{
  "code": "E0009",
  "message": "Too Many Requests",
  "description": "Exceeded maximum allowed number of request limit",
  "details": [
    "details9",
    "details0"
  ]
}
```

