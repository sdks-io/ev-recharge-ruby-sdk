# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # A Marker is a place on the map that represent multiple Locations at the same
  # spot
  class MultiLocationMarker < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Identifies the marker type. If it's a `MultiLocationMarker`, then the
    # value is `MultiLocation`
    # @return [String]
    attr_accessor :marker_type

    # Uniquely identifies the marker object
    # @return [String]
    attr_accessor :unique_key

    # Coordinates of the Shell Recharge Site Location
    # @return [Coordinates]
    attr_accessor :coordinates

    # Number of Locations that this Marker represents in the given set of bounds
    # @return [Float]
    attr_accessor :location_count

    # Total number of Evses in Locations that this Marker represents
    # @return [Float]
    attr_accessor :evse_count

    # Maximum power in kW across all locations grouped in this marker
    # (disregarding availability)
    # @return [Float]
    attr_accessor :max_power

    # GeoHash of marker coordinates
    # @return [String]
    attr_accessor :geo_hash

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['marker_type'] = 'markerType'
      @_hash['unique_key'] = 'uniqueKey'
      @_hash['coordinates'] = 'coordinates'
      @_hash['location_count'] = 'locationCount'
      @_hash['evse_count'] = 'evseCount'
      @_hash['max_power'] = 'maxPower'
      @_hash['geo_hash'] = 'geoHash'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        unique_key
        coordinates
        location_count
        evse_count
        max_power
        geo_hash
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(marker_type = nil, unique_key = SKIP, coordinates = SKIP,
                   location_count = SKIP, evse_count = SKIP, max_power = SKIP,
                   geo_hash = SKIP)
      @marker_type = marker_type
      @unique_key = unique_key unless unique_key == SKIP
      @coordinates = coordinates unless coordinates == SKIP
      @location_count = location_count unless location_count == SKIP
      @evse_count = evse_count unless evse_count == SKIP
      @max_power = max_power unless max_power == SKIP
      @geo_hash = geo_hash unless geo_hash == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      marker_type = hash.key?('markerType') ? hash['markerType'] : nil
      unique_key = hash.key?('uniqueKey') ? hash['uniqueKey'] : SKIP
      coordinates = Coordinates.from_hash(hash['coordinates']) if hash['coordinates']
      location_count = hash.key?('locationCount') ? hash['locationCount'] : SKIP
      evse_count = hash.key?('evseCount') ? hash['evseCount'] : SKIP
      max_power = hash.key?('maxPower') ? hash['maxPower'] : SKIP
      geo_hash = hash.key?('geoHash') ? hash['geoHash'] : SKIP

      # Create object from extracted values.
      MultiLocationMarker.new(marker_type,
                              unique_key,
                              coordinates,
                              location_count,
                              evse_count,
                              max_power,
                              geo_hash)
    end

    # Validates an instance of the object from a given value.
    # @param [MultiLocationMarker | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.marker_type,
                                     ->(val) { val.instance_of? String })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['markerType'],
                            ->(val) { val.instance_of? String })
    end
  end
end
