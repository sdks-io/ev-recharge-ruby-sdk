
# Electrical Properties V2

Electrical Properties of the Connector

## Structure

`ElectricalPropertiesV2`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `power_type` | [`ElectricalPropertiesPowerTypeEnum`](../../doc/models/electrical-properties-power-type-enum.md) | Optional | Power Type used in this connector. |
| `voltage` | `Float` | Optional | Voltage in Volts for this connector |
| `amperage` | `Float` | Optional | Electric Current in Amperes for this connector |
| `max_electric_power` | `Float` | Optional | Power in Kilowatts for this connector |

## Example

```ruby
electrical_properties_v2 = ElectricalPropertiesV2.new(
  ElectricalPropertiesPowerTypeEnum::AC1PHASE,
  230,
  16,
  3.7
)
```

