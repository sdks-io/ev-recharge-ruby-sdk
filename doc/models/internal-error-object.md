
# Internal Error Object

## Structure

`InternalErrorObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Optional | Error code |
| `message` | `String` | Optional | Error description in English |
| `description` | `String` | Optional | Technical details of the error message, the example which is given in the sample payload is one of the scenario. actual response will vary based on the technical nature |

## Example (as JSON)

```json
{
  "code": "E0005",
  "message": "Internal Server Error",
  "description": "Server encountered an unexpected condition that prevented it from fulfilling the request"
}
```

