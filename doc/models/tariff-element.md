
# Tariff Element

## Structure

`TariffElement`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_components` | [`Array[PriceComponent]`](../../doc/models/price-component.md) | Required | - |
| `restrictions` | [`Restrictions`](../../doc/models/restrictions.md) | Optional | - |

## Example

```ruby
tariff_element = TariffElement.new(
  [
    PriceComponent.new(
      TypeEnum::FLAT,
      1,
      0.3,
      21
    )
  ],
  Restrictions.new(
    'startTime0',
    'endTime2',
    Date.iso8601('2016-03-13'),
    Date.iso8601('2016-03-13'),
    247.22,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    []
  )
)
```

