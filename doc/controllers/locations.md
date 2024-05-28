# Locations

APIs for Shell Recharge Locations

```ruby
locations_controller = client.locations
```

## Class Name

`LocationsController`

## Methods

* [Get Locations List](../../doc/controllers/locations.md#get-locations-list)
* [Get Location by Id](../../doc/controllers/locations.md#get-location-by-id)
* [Get Nearby Locations](../../doc/controllers/locations.md#get-nearby-locations)
* [Get Markers List](../../doc/controllers/locations.md#get-markers-list)


# Get Locations List

This API provides the list of all Shell Recharge locations. The list includes all Shell Recharge network and all locations available through our roaming partners.The end point provides flexible search criteria in order to get the list of Shell Recharge Network. The end point provides the details such as the exact location/address of the site along with the up-to-date status information of all the charging units in the site.

Supported Search Options

* Based on status of the Charging units. Eg : Available or Occupied
* Based on available connector types.
* Based on minimum Power output (in kW) available
* Based on a specific charging unit ID (EVSE ID)

```ruby
def get_locations_list(request_id,
                       evse_status: nil,
                       connector_types: nil,
                       connector_min_power: nil,
                       authorization_methods: nil,
                       with_operator_name: nil,
                       evse_id: nil,
                       location_external_id: nil,
                       evse_external_id: nil,
                       page_number: nil,
                       per_page: nil,
                       updated_since: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Header, Required | A unique request id in GUID format. The value is written to the Shell API Platform audit log for end to end traceability of a request. |
| `evse_status` | [`GetLocationsListEvseStatusEnum`](../../doc/models/get-locations-list-evse-status-enum.md) | Query, Optional | Filter by Locations that have the given status |
| `connector_types` | [`GetLocationsListConnectorTypesEnum`](../../doc/models/get-locations-list-connector-types-enum.md) | Query, Optional | Filter by Locations that have Connectors with the set of Connector Types |
| `connector_min_power` | `Float` | Query, Optional | Filter by Locations that have a Connector with at least this power output (in kW) |
| `authorization_methods` | [`GetLocationsListAuthorizationMethodsEnum`](../../doc/models/get-locations-list-authorization-methods-enum.md) | Query, Optional | Filter by Locations that support the given Authorization Methods |
| `with_operator_name` | `TrueClass \| FalseClass` | Query, Optional | Return operator name in marker response object |
| `evse_id` | `String` | Query, Optional | optional Standard EVSE (Electric Vehicle Supply Equipment) Id identifier (ISO-IEC-15118) |
| `location_external_id` | `String` | Query, Optional | Filter by Locations with the given externalId. (Unique Location externalID provided by Shell Recharge) |
| `evse_external_id` | `String` | Query, Optional | Filter by Locations that have an Evse with the given External Id. (Unique individual EVSE externalID provided by Shell Recharge) |
| `page_number` | `Integer` | Query, Optional | Restrict the response list by providing a specific set of page Number. Set perPage parameter also when pageNumber is used. |
| `per_page` | `Integer` | Query, Optional | Restrict the number of sites in reposne per page. |
| `updated_since` | `String` | Query, Optional | ZonedDateTime as string |

## Response Type

[`Array<LocationResponeObject>`](../../doc/models/location-respone-object.md)

## Example Usage

```ruby
request_id = 'RequestId8'

evse_id = 'NL*TNM*E01000401*0'

result = locations_controller.get_locations_list(
  request_id,
  evse_id: evse_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing). | [`BadRequestException`](../../doc/models/bad-request-exception.md) |
| 401 | The request has not been applied because it lacks valid authentication credentials for the target resource. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 404 | Location Not Found | [`NotFoundException`](../../doc/models/not-found-exception.md) |


# Get Location by Id

This API provides the details on a single Shell Recharge location.
The query for a single location is to be made using the Unique Internal identifier used to refer to this Location by Shell Recharge. (Uid from List of locations API)

```ruby
def get_location_by_id(request_id,
                       id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Header, Required | A unique request id in GUID format. The value is written to the Shell API Platform audit log for end to end traceability of a request. |
| `id` | `String` | Template, Required | Unique Uid of the location from List of locations API |

## Response Type

[`LocationResponeObject`](../../doc/models/location-respone-object.md)

## Example Usage

```ruby
request_id = 'RequestId8'

id = 'id0'

result = locations_controller.get_location_by_id(
  request_id,
  id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing). | [`BadRequestException`](../../doc/models/bad-request-exception.md) |
| 401 | The request has not been applied because it lacks valid authentication credentials for the target resource. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 404 | Location Not Found | [`NotFoundException`](../../doc/models/not-found-exception.md) |


# Get Nearby Locations

This API provides the list of all near by Shell Recharge locations based on the latitude and longitude provided in the request.
The list includes all Shell Recharge network and all sites available through our roaming partners.
The end point provides the details such as the exact location/address of the site along with the up-to-date status information of all the charging units in the site.

Supported Search Options

* Based on latitude and longitude of the location. (Mandatory)
* Based on status of the Charging units. Eg : Available or Occupied
* Based on available connector types.
* Based on minimum Power output (in kW) available

```ruby
def get_nearby_locations(request_id,
                         latitude,
                         longitude,
                         limit: 25,
                         location_external_id: nil,
                         evse_id: nil,
                         evse_external_id: nil,
                         operator_name: nil,
                         evse_status: nil,
                         connector_types: nil,
                         connector_min_power: nil,
                         authorization_methods: nil,
                         with_operator_name: nil,
                         with_max_power: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Header, Required | A unique request id in GUID format. The value is written to the Shell API Platform audit log for end to end traceability of a request. |
| `latitude` | `Float` | Query, Required | Latitude to get Shell Recharge Locations nearby |
| `longitude` | `Float` | Query, Required | Longitude to get Shell Recharge Locations nearby |
| `limit` | `Float` | Query, Optional | Maximum number of Locations to retrieve |
| `location_external_id` | `String` | Query, Optional | Filter by Locations with the given externalId Identifier as given by the Shell Recharge Operator, unique for that Operator |
| `evse_id` | `String` | Query, Optional | Filter by Locations that have an Evse with the given Evse Id |
| `evse_external_id` | `String` | Query, Optional | Filter by Locations that have an Evse with the given External Id Identifier of the Evse as given by the Operator, unique for that Operator |
| `operator_name` | `String` | Query, Optional | Filter by Locations that have the given operator |
| `evse_status` | [`GetNearbyLocationsEvseStatusEnum`](../../doc/models/get-nearby-locations-evse-status-enum.md) | Query, Optional | Filter by Locations that have the given status |
| `connector_types` | [`GetNearbyLocationsConnectorTypesEnum`](../../doc/models/get-nearby-locations-connector-types-enum.md) | Query, Optional | Filter by Locations that have Connectors with these Connector Types |
| `connector_min_power` | `Float` | Query, Optional | Filter by Locations that have a Connector with at least this power output (in kW) |
| `authorization_methods` | [`GetNearbyLocationsAuthorizationMethodsEnum`](../../doc/models/get-nearby-locations-authorization-methods-enum.md) | Query, Optional | Filter by Locations that support the given Authorization Methods |
| `with_operator_name` | `TrueClass \| FalseClass` | Query, Optional | Return operator name in marker object (only for marker type SingleChargePoint) |
| `with_max_power` | `TrueClass \| FalseClass` | Query, Optional | Return maximum power in kW across all locations grouped in this marker (disregarding availability) |

## Response Type

[`LocationResponeObject`](../../doc/models/location-respone-object.md)

## Example Usage

```ruby
request_id = 'RequestId8'

latitude = 65.76

longitude = 188.04

limit = 25

result = locations_controller.get_nearby_locations(
  request_id,
  latitude,
  longitude,
  limit: limit
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing). | [`BadRequestException`](../../doc/models/bad-request-exception.md) |
| 401 | The request has not been applied because it lacks valid authentication credentials for the target resource. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 404 | Location Not Found | [`NotFoundException`](../../doc/models/not-found-exception.md) |


# Get Markers List

This API, when given a set of bounds on the geographical front (East,West, North, South) will return a set of Markers that fall within the requested bounds. The API will automatically group locations at the same position on the map into one Marker.

The API also provide further search options to filter the result set.

* Based on status of the Charging units. Eg : Available or Occupied
* Based on available connector types.
* Based on minimum Power output (in kW) available

```ruby
def get_markers_list(request_id,
                     west,
                     south,
                     east,
                     north,
                     zoom,
                     evse_status: nil,
                     connector_types: nil,
                     connector_min_power: nil,
                     authorization_methods: nil,
                     with_operator_name: nil,
                     with_max_power: nil,
                     location_external_id: nil,
                     evse_id: nil,
                     evse_external_id: nil,
                     operator_name: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Header, Required | A unique request id in GUID format. The value is written to the Shell API Platform audit log for end to end traceability of a request. |
| `west` | `Float` | Query, Required | Longitude of the western bound to get the Shell Recharge Locations |
| `south` | `Float` | Query, Required | Latitude of the southern bound to get the Shell Recharge Locations |
| `east` | `Float` | Query, Required | Longitude of the eastern bound to get the Shell Recharge Locations |
| `north` | `Float` | Query, Required | Latitude of the northern bound to get the Shell Recharge Locations |
| `zoom` | `String` | Query, Required | Zoom level to show ex: (1: World, 5: Landmass/continent, 10: City, 15: Streets, 20: Buildings) |
| `evse_status` | [`GetMarkersListEvseStatusEnum`](../../doc/models/get-markers-list-evse-status-enum.md) | Query, Optional | Filter by Locations that have the given status |
| `connector_types` | [`GetMarkersListConnectorTypesEnum`](../../doc/models/get-markers-list-connector-types-enum.md) | Query, Optional | Filter by Locations that have Connectors with the set of Connector Types |
| `connector_min_power` | `Float` | Query, Optional | Filter by Locations that have a Connector with at least this power output (in kW) |
| `authorization_methods` | [`GetMarkersListAuthorizationMethodsEnum`](../../doc/models/get-markers-list-authorization-methods-enum.md) | Query, Optional | Filter by Locations that support the given Authorization Methods |
| `with_operator_name` | `TrueClass \| FalseClass` | Query, Optional | Return operator name in marker object (only for marker type SingleChargePoint) |
| `with_max_power` | `TrueClass \| FalseClass` | Query, Optional | Return maximum power in kW across all locations grouped in this marker (disregarding availability) |
| `location_external_id` | `String` | Query, Optional | Filter by Locations with the given externalId. (Unique Location externalID provided by Shell Recharge) |
| `evse_id` | `String` | Query, Optional | Filter by Locations that have an Evse with the given Evse Id |
| `evse_external_id` | `String` | Query, Optional | Filter by Locations that have an Evse with the given External Id Identifier of the Evse as given by the Operator, unique for that Operator |
| `operator_name` | `String` | Query, Optional | Filter by Locations that have the given operator |

## Response Type

Array[[SingleLocationMarker](../../doc/models/single-location-marker.md) | [MultiLocationMarker](../../doc/models/multi-location-marker.md)]

## Example Usage

```ruby
request_id = 'RequestId8'

west = 152.84

south = 13.76

east = 16.36

north = 73.98

zoom = 'zoom0'

result = locations_controller.get_markers_list(
  request_id,
  west,
  south,
  east,
  north,
  zoom
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing). | [`BadRequestException`](../../doc/models/bad-request-exception.md) |
| 401 | The request has not been applied because it lacks valid authentication credentials for the target resource. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 404 | Location Not Found | [`NotFoundException`](../../doc/models/not-found-exception.md) |

