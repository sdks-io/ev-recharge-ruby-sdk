
# Charge Retrieve State

## Structure

`ChargeRetrieveState`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | `String` | Optional | Describes the session state<br><br>started, stopped, start-requested, stop-requested, failed-to-start, failed-to-stop |
| `error` | [`ChargeError`](../../doc/models/charge-error.md) | Optional | - |

## Example

```ruby
charge_retrieve_state = ChargeRetrieveState.new(
  'status8',
  ChargeError.new(
    'code2',
    'message4'
  )
)
```

