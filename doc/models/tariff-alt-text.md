
# Tariff Alt Text

## Structure

`TariffAltText`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `language` | `String` | Required | ISO language code |
| `text` | `String` | Required | Human readable tariff description |

## Example

```ruby
tariff_alt_text = TariffAltText.new(
  'en',
  '€0.30 per kWh'
)
```

