# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # Coordinates of the Shell Recharge Site Location
  class Coordinates < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Latitude of the Coordinate
    # @return [Float]
    attr_accessor :latitude

    # Longitude of the Coordinate
    # @return [Float]
    attr_accessor :longitude

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['latitude'] = 'latitude'
      @_hash['longitude'] = 'longitude'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        latitude
        longitude
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(latitude = SKIP,
                   longitude = SKIP)
      @latitude = latitude unless latitude == SKIP
      @longitude = longitude unless longitude == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      latitude = hash.key?('latitude') ? hash['latitude'] : SKIP
      longitude = hash.key?('longitude') ? hash['longitude'] : SKIP

      # Create object from extracted values.
      Coordinates.new(latitude,
                      longitude)
    end

    # Validates an instance of the object from a given value.
    # @param [Coordinates | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end