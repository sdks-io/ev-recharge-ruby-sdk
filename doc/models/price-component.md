
# Price Component

## Structure

`PriceComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`TypeEnum`](../../doc/models/type-enum.md) | Required | Type of the price component |
| `step_size` | `Integer` | Required | Step size in seconds for TIME-based components, in kWh for ENERGY-based components, or 1 for FLAT components |
| `price` | `Float` | Required | Price per step in the specified currency for this price component |
| `vat` | `Float` | Required | VAT percentage applicable to this price component |

## Example

```ruby
price_component = PriceComponent.new(
  TypeEnum::FLAT,
  1,
  0.3,
  21
)
```

