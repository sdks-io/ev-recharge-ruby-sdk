
# Not Found Exception

Requested resource path not available it will provides the error in OpenAPI spec mentioned format, if there is any change in base URL then respective platform error message will be populated.

## Structure

`NotFoundException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | requestId is unique identifier value that is attached to requests and messages that allow reference to a particular transaction or event chain. |
| `status` | `String` | Optional | Status of the request |
| `errors` | [`Array<NotFoundErrMsg>`](../../doc/models/not-found-err-msg.md) | Optional | Exception details of the error |

## Example (as JSON)

```json
{
  "requestId": "9d2dee33-7803-485a-a2b1-2c7538e597ee",
  "status": "FAILED",
  "errors": [
    {
      "code": "code8",
      "message": "message0",
      "description": "description0",
      "details": [
        "details5",
        "details6"
      ]
    }
  ]
}
```

