
# Search by Id Connector

An EVSE can have one or many Connectors. Each Connector will normally have a different socket / cable and only one can be used to charge at a time.

## Structure

`SearchByIdConnector`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | Internal identifier used to refer to this Connector |
| `external_id` | `String` | Optional | Identifier of the Evse as given by the Operator, unique for the containing EVSE' |
| `connector_type` | [`ConnectorVOConnectorTypeEnum`](../../doc/models/connector-vo-connector-type-enum.md) | Optional | Type of the connector in the EVSE unit. |
| `electrical_properties` | [`ElectricalPropertiesV2`](../../doc/models/electrical-properties-v2.md) | Optional | Electrical Properties of the Connector |
| `tariffs` | [`Array[TariffV2]`](../../doc/models/tariff-v2.md) | Optional | Tariffs applicable to this Connector |

## Example

```ruby
search_by_id_connector = SearchByIdConnector.new(
  '2',
  '01000861_1_21',
  ConnectorVOConnectorTypeEnum::TYPE2,
  ElectricalPropertiesV2.new(
    ElectricalPropertiesPowerTypeEnum::AC1PHASE,
    110.62,
    46.4,
    232.04
  ),
  [
    TariffV2.new(
      'tariffId4',
      TariffTypeEnum::DRIVER,
      PowerRange.new(
        102,
        20
      ),
      'internalId2',
      'operatorId8',
      'providerId2',
      'currency8',
      [
        TariffAltText.new(
          'language8',
          'text6'
        )
      ],
      189.42,
      247.64,
      [
        TariffElement.new(
          [
            PriceComponent.new(
              TypeEnum::TIME,
              124,
              196.82,
              137.74
            ),
            PriceComponent.new(
              TypeEnum::TIME,
              124,
              196.82,
              137.74
            ),
            PriceComponent.new(
              TypeEnum::TIME,
              124,
              196.82,
              137.74
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
      DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      'createdBy4'
    ),
    TariffV2.new(
      'tariffId4',
      TariffTypeEnum::DRIVER,
      PowerRange.new(
        102,
        20
      ),
      'internalId2',
      'operatorId8',
      'providerId2',
      'currency8',
      [
        TariffAltText.new(
          'language8',
          'text6'
        )
      ],
      189.42,
      247.64,
      [
        TariffElement.new(
          [
            PriceComponent.new(
              TypeEnum::TIME,
              124,
              196.82,
              137.74
            ),
            PriceComponent.new(
              TypeEnum::TIME,
              124,
              196.82,
              137.74
            ),
            PriceComponent.new(
              TypeEnum::TIME,
              124,
              196.82,
              137.74
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
      DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      'createdBy4'
    ),
    TariffV2.new(
      'tariffId4',
      TariffTypeEnum::DRIVER,
      PowerRange.new(
        102,
        20
      ),
      'internalId2',
      'operatorId8',
      'providerId2',
      'currency8',
      [
        TariffAltText.new(
          'language8',
          'text6'
        )
      ],
      189.42,
      247.64,
      [
        TariffElement.new(
          [
            PriceComponent.new(
              TypeEnum::TIME,
              124,
              196.82,
              137.74
            ),
            PriceComponent.new(
              TypeEnum::TIME,
              124,
              196.82,
              137.74
            ),
            PriceComponent.new(
              TypeEnum::TIME,
              124,
              196.82,
              137.74
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
      DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      'createdBy4'
    )
  ]
)
```

