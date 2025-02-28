# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # A Marker is a place on the map that represent a single Location
  class SingleLocationMarker < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Identifies the marker type. If it’s a `SingleLocationMarker`, then the
    # value is `SingleLocation`
    # @return [String]
    attr_accessor :marker_type

    # Uniquely identifies the marker object
    # @return [String]
    attr_accessor :unique_key

    # Uniquely identifies the marker object
    # @return [SingleLocationMarkerStatusEnum]
    attr_accessor :status

    # Coordinates of the Shell Recharge Site Location
    # @return [Coordinates]
    attr_accessor :coordinates

    # Total number of Evse units in Locations that this Marker represents
    # @return [Float]
    attr_accessor :evse_count

    # Maximum power in kW across all locations grouped in this marker
    # (disregarding availability)
    # @return [Float]
    attr_accessor :max_power

    # GeoHash of marker coordinates
    # @return [String]
    attr_accessor :geo_hash

    # Unique ID of the Location this Marker represents
    # @return [Float]
    attr_accessor :location_uid

    # Methods that can be used to Authorize sessions on this EVSE
    # @return [Array[SingleLocationMarkerAuthorizationMethodsItemsEnum]]
    attr_accessor :authorization_methods

    # Unique Id of the operator
    # @return [String]
    attr_accessor :operator_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['marker_type'] = 'markerType'
      @_hash['unique_key'] = 'uniqueKey'
      @_hash['status'] = 'status'
      @_hash['coordinates'] = 'coordinates'
      @_hash['evse_count'] = 'evseCount'
      @_hash['max_power'] = 'maxPower'
      @_hash['geo_hash'] = 'geoHash'
      @_hash['location_uid'] = 'locationUid'
      @_hash['authorization_methods'] = 'authorizationMethods'
      @_hash['operator_id'] = 'operatorId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        unique_key
        status
        coordinates
        evse_count
        max_power
        geo_hash
        location_uid
        authorization_methods
        operator_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(marker_type = nil, unique_key = SKIP, status = SKIP,
                   coordinates = SKIP, evse_count = SKIP, max_power = SKIP,
                   geo_hash = SKIP, location_uid = SKIP,
                   authorization_methods = SKIP, operator_id = SKIP)
      @marker_type = marker_type
      @unique_key = unique_key unless unique_key == SKIP
      @status = status unless status == SKIP
      @coordinates = coordinates unless coordinates == SKIP
      @evse_count = evse_count unless evse_count == SKIP
      @max_power = max_power unless max_power == SKIP
      @geo_hash = geo_hash unless geo_hash == SKIP
      @location_uid = location_uid unless location_uid == SKIP
      @authorization_methods = authorization_methods unless authorization_methods == SKIP
      @operator_id = operator_id unless operator_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      marker_type = hash.key?('markerType') ? hash['markerType'] : nil
      unique_key = hash.key?('uniqueKey') ? hash['uniqueKey'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      coordinates = Coordinates.from_hash(hash['coordinates']) if hash['coordinates']
      evse_count = hash.key?('evseCount') ? hash['evseCount'] : SKIP
      max_power = hash.key?('maxPower') ? hash['maxPower'] : SKIP
      geo_hash = hash.key?('geoHash') ? hash['geoHash'] : SKIP
      location_uid = hash.key?('locationUid') ? hash['locationUid'] : SKIP
      authorization_methods =
        hash.key?('authorizationMethods') ? hash['authorizationMethods'] : SKIP
      operator_id = hash.key?('operatorId') ? hash['operatorId'] : SKIP

      # Create object from extracted values.
      SingleLocationMarker.new(marker_type,
                               unique_key,
                               status,
                               coordinates,
                               evse_count,
                               max_power,
                               geo_hash,
                               location_uid,
                               authorization_methods,
                               operator_id)
    end

    # Validates an instance of the object from a given value.
    # @param [SingleLocationMarker | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.marker_type,
                                     ->(val) { val.instance_of? String })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['markerType'],
                            ->(val) { val.instance_of? String })
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} marker_type: #{@marker_type}, unique_key: #{@unique_key}, status:"\
      " #{@status}, coordinates: #{@coordinates}, evse_count: #{@evse_count}, max_power:"\
      " #{@max_power}, geo_hash: #{@geo_hash}, location_uid: #{@location_uid},"\
      " authorization_methods: #{@authorization_methods}, operator_id: #{@operator_id}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} marker_type: #{@marker_type.inspect}, unique_key: #{@unique_key.inspect},"\
      " status: #{@status.inspect}, coordinates: #{@coordinates.inspect}, evse_count:"\
      " #{@evse_count.inspect}, max_power: #{@max_power.inspect}, geo_hash: #{@geo_hash.inspect},"\
      " location_uid: #{@location_uid.inspect}, authorization_methods:"\
      " #{@authorization_methods.inspect}, operator_id: #{@operator_id.inspect}>"
    end
  end
end
