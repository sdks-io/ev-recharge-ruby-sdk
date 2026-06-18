
# Inline Response 202 Data

## Structure

`InlineResponse202Data`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `session_id` | `String` | Optional | Session Id for tracking.<br><br>**Constraints**: *Minimum Length*: `36`, *Maximum Length*: `36`, *Pattern*: `^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$` |

## Example

```ruby
inline_response_202_data = InlineResponse202Data.new(
  'c3e332f0-1bb2-4f50-a96b-e075bbb71e68'
)
```

