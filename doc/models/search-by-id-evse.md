
# Search by Id Evse

Each Location will contain one or more EVSEs (Electric Vehicle Supply Equipment). Each EVSE is capable of charging one car at a time.

## Structure

`SearchByIdEvse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | Internal identifier used to refer to single individual  EVSE unit. |
| `external_id` | `String` | Optional | Identifier of the Evse as given by the Operator, unique for that Operator |
| `evse_id` | `String` | Optional | Standard EVSEId identifier (ISO-IEC-15118) |
| `status` | [`EvseVOStatusEnum`](../../doc/models/evse-vo-status-enum.md) | Optional | The current status of the EVSE units availability |
| `updated` | `String` | Optional | ISO8601-compliant UTC datetime of the last update of the EVSE |
| `physical_reference` | `String` | Optional | An optional number/string printed on the outside of the EVSE for visual identification |
| `connectors` | [`Array[SearchByIdConnector]`](../../doc/models/search-by-id-connector.md) | Optional | List of all connectors available on this EVSE unit. |
| `authorization_methods` | [`Array[SingleLocationMarkerAuthorizationMethodsItemsEnum]`](../../doc/models/single-location-marker-authorization-methods-items-enum.md) | Optional | Methods that can be used to Authorize sessions on this EVSE |

## Example

```ruby
search_by_id_evse = SearchByIdEvse.new(
  'NL*MKS*E0000001*0_1',
  '01001188_1',
  'NL*TNM*E01000401*0',
  EvseVOStatusEnum::AVAILABLE,
  '2021-10-06T10:44:24Z',
  'Green',
  [],
  [
    SingleLocationMarkerAuthorizationMethodsItemsEnum::NEWMOTIONAPP
  ]
)
```

