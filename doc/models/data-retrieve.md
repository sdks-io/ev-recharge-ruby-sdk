
# Data Retrieve

## Structure

`DataRetrieve`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Id of the session |
| `user_id` | `String` | Optional | Id of the user that started the session<br><br>**Constraints**: *Minimum Length*: `36`, *Maximum Length*: `36`, *Pattern*: `^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$` |
| `ema_id` | `String` | Optional | Id of the evse that the user is charging<br><br>**Constraints**: *Minimum Length*: `12`, *Maximum Length*: `36` |
| `evse_id` | `String` | Optional | Ema-id of the charge token that is used |
| `last_updated` | `String` | Optional | Last updated date |
| `started_at` | `DateTime` | Optional | When the session is started |
| `stopped_at` | `DateTime` | Optional | When the session is stopped |
| `session_state` | [`ChargeRetrieveState`](../../doc/models/charge-retrieve-state.md) | Optional | - |

## Example

```ruby
data_retrieve = DataRetrieve.new(
  '78b5d7a3-bdba-43d7-9851-1c84fcddb782',
  '281482b6-2c9a-4fd1-b3ea-1928edb40ef9',
  'NL-TNM-C00122045-K',
  'NL*TNM*E02003451*0',
  'lastUpdated6',
  DateTimeHelper.from_rfc3339('2015-08-19T11:20:27Z'),
  DateTimeHelper.from_rfc3339('2015-08-19T11:20:27Z'),
  ChargeRetrieveState.new(
    nil,
    ChargeError.new
  )
)
```

