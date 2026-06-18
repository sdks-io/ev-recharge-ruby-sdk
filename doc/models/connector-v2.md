
# Connector V2

An EVSE can have one or many Connectors. Each Connector will normally have a different socket / cable and only one can be used to charge at a time.

## Structure

`ConnectorV2`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | Internal identifier used to refer to this Connector |
| `external_id` | `String` | Optional | Identifier of the Evse as given by the Operator, unique for the containing EVSE' |
| `connector_type` | [`ConnectorVOConnectorTypeEnum`](../../doc/models/connector-vo-connector-type-enum.md) | Optional | Type of the connector in the EVSE unit. |
| `electrical_properties` | [`ElectricalPropertiesV2`](../../doc/models/electrical-properties-v2.md) | Optional | Electrical Properties of the Connector |

## Example

```ruby
connector_v2 = ConnectorV2.new(
  '2',
  '01000861_1_21',
  ConnectorVOConnectorTypeEnum::TYPE2,
  ElectricalPropertiesV2.new(
    ElectricalPropertiesPowerTypeEnum::AC1PHASE,
    110.62,
    46.4,
    232.04
  )
)
```

