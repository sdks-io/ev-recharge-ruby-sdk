
# Chargesession Start Body

## Structure

`ChargesessionStartBody`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ev_charge_number` | `String` | Required | Ev charge number<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `50` |
| `evse_id` | `String` | Required | This is the Electric Vehicle EquipmentID<br><br>**Constraints**: *Minimum Length*: `18`, *Maximum Length*: `36` |

## Example

```ruby
chargesession_start_body = ChargesessionStartBody.new(
  'NL-TNM-C00122045-K',
  'NL*TNM*E02003451*0'
)
```

