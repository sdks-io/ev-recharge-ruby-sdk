
# Unauthorized Exception

## Structure

`UnauthorizedException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | requestId or correlation id of the message |
| `status` | `String` | Optional | Status of the request |
| `errors` | [`Array<UnauthorizedErrMsg>`](../../doc/models/unauthorized-err-msg.md) | Optional | Exception details of the error |

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
    },
    {
      "code": "code8",
      "message": "message0",
      "description": "description0",
      "details": [
        "details5",
        "details6"
      ]
    },
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

