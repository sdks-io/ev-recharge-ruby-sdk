
# Tariff V2

Tariff metadata aligned with TariffV2 GraphQL schema

## Structure

`TariffV2`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `tariff_id` | `String` | Required | Unique identifier for the tariff |
| `tariff_type` | [`TariffTypeEnum`](../../doc/models/tariff-type-enum.md) | Required | Tariff type classification |
| `power_range` | [`PowerRange`](../../doc/models/power-range.md) | Required | - |
| `internal_id` | `String` | Required | Internal identifier used by the platform |
| `operator_id` | `String` | Required | Unique identifier of the operator |
| `provider_id` | `String` | Required | Unique identifier of the provider |
| `currency` | `String` | Required | ISO 4217 Currency Code |
| `tariff_alt_text` | [`Array[TariffAltText]`](../../doc/models/tariff-alt-text.md) | Required | - |
| `min_price` | `Float` | Required | - |
| `max_price` | `Float` | Required | - |
| `elements` | [`Array[TariffElement]`](../../doc/models/tariff-element.md) | Required | - |
| `start_date_time` | `DateTime` | Required | - |
| `end_date_time` | `DateTime` | Required | - |
| `last_updated` | `DateTime` | Required | - |
| `created_by` | `String` | Required | Identifier of the actor who created the tariff |

## Example

```ruby
tariff_v2 = TariffV2.new(
  '123e4567-e89b-12d3-a456-426614174000',
  TariffTypeEnum::DRIVER,
  PowerRange.new(
    0,
    100
  ),
  '123e4567-e89b-12d3-a456-426614174000',
  'AT-HTB',
  'Shell_RP_2',
  'EUR',
  [
    TariffAltText.new(
      'en',
      '€0.30 per kWh'
    )
  ],
  0.3,
  999,
  [
    TariffElement.new(
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
  ],
  DateTimeHelper.from_rfc3339('2021-10-06T10:44:24Z'),
  DateTimeHelper.from_rfc3339('2021-10-06T10:44:24Z'),
  DateTimeHelper.from_rfc3339('2021-10-06T10:44:24Z'),
  'STAGE_API'
)
```

