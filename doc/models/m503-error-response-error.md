
# M503 Error Response Error

## Structure

`M503ErrorResponseError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Required | Error code that logically best represents the error encountered<br>**Constraints**: *Minimum Length*: `5`, *Maximum Length*: `5` |
| `title` | `String` | Required | Description of the error type<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `100` |
| `detail` | `String` | Required | Details of the error that can help under the cause of the error<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `250` |
| `additional_info` | `Hash[String, String]` | Optional | - |

## Example (as JSON)

```json
{
  "Code": "E0012",
  "Title": "Connectivity Error",
  "Detail": "Unable to process the request due to connectivity issue. Please retry after sometime. If the  problem persists contact support",
  "AdditionalInfo": {
    "key0": "AdditionalInfo6",
    "key1": "AdditionalInfo5"
  }
}
```

