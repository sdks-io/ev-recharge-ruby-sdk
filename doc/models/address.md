
# Address

Address of the Shell Recharge Location

## Structure

`Address`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `street_and_number` | `String` | Optional | Street Name and Number of the Shell Recharge Location |
| `postal_code` | `String` | Optional | Postal Code of the Shell Recharge Location |
| `city` | `String` | Optional | City name of the Shell Recharge Location |
| `country` | `String` | Optional | ISO 3166 Alpha-2 Country Code of the Shell Recharge Location |

## Example

```ruby
address = Address.new(
  'Maarssenbroeksedijk 33',
  '3542 DM',
  'Utrecht',
  'NLD'
)
```

