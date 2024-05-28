
# Data Active

## Structure

`DataActive`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Id of the session |
| `user_id` | `String` | Optional | Id of the user that started the session<br>**Constraints**: *Minimum Length*: `36`, *Maximum Length*: `36`, *Pattern*: `^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$` |
| `ema_id` | `String` | Optional | Id of the evse that the user is charging<br>**Constraints**: *Minimum Length*: `12`, *Maximum Length*: `36` |
| `evse_id` | `String` | Optional | Electric Vehicle Supply Equipment Identifier. An EVSEID identifies a Charging Point. |
| `started_at` | `DateTime` | Optional | When the session is started |
| `stopped_at` | `DateTime` | Optional | When the session is stopped |
| `session_state` | [`DataActiveSessionStateEnum`](../../doc/models/data-active-session-state-enum.md) | Optional | Describes the session state |
| `session_code` | [`DataActiveSessionCodeEnum`](../../doc/models/data-active-session-code-enum.md) | Optional | Session code e.g InternalError<br>**Constraints**: *Minimum Length*: `7`, *Maximum Length*: `14` |
| `session_message` | `String` | Optional | Session message |

## Example (as JSON)

```json
{
  "Id": "78b5d7a3-bdba-43d7-9851-1c84fcddb782",
  "UserId": "281482b6-2c9a-4fd1-b3ea-1928edb40ef9",
  "EmaId": "NL-TNM-C00122045-K",
  "EvseId": "NL*TNM*E02003451*0",
  "StartedAt": "08/19/2015 11:20:27",
  "StoppedAt": "08/19/2015 11:20:27",
  "SessionState": "start-requested",
  "SessionCode": "EvseInUse",
  "SessionMessage": "Evse in use"
}
```

