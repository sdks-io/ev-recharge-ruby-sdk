
# Connector VO

An EVSE can have one or many Connectors. Each Connector will normally have a different socket / cable and only one can be used to charge at a time.

## Structure

`ConnectorVO`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `Integer` | Optional | Internal identifier used to refer to this Connector |
| `external_id` | `String` | Optional | Identifier of the Evse as given by the Operator, unique for the containing EVSE' |
| `connector_type` | [`ConnectorVOConnectorTypeEnum`](../../doc/models/connector-vo-connector-type-enum.md) | Optional | Type of the connector in the EVSE unit. |
| `electrical_properties` | [`ElectricalProperties`](../../doc/models/electrical-properties.md) | Optional | Electrical Properties of the Connector |
| `fixed_cable` | `TrueClass \| FalseClass` | Optional | Indicates whether Connector has a fixed cable attached. False by default (not sent in this case) |
| `tariff` | [`TariffVO`](../../doc/models/tariff-vo.md) | Optional | Tariff details for charging on this Connector |
| `updated` | `String` | Optional | ISO8601-compliant UTC datetime of the last update of the Connectors's data |
| `updated_by` | [`ConnectorVOUpdatedByEnum`](../../doc/models/connector-vo-updated-by-enum.md) | Optional | Source of the last update |
| `deleted` | `String` | Optional | optional  ISO8601-compliant UTC deletion timestamp of the connector |

## Example (as JSON)

```json
{
  "uid": 2,
  "externalId": "01000861_1_21",
  "connectorType": "Type2",
  "fixedCable": true,
  "updated": "10/06/2021 10:44:24",
  "updatedBy": "TariffService",
  "deleted": "12/06/2021 10:44:24",
  "electricalProperties": {
    "powerType": "AC1Phase",
    "voltage": 110.62,
    "amperage": 46.4,
    "maxElectricPower": 232.04
  }
}
```

