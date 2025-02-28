# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # LocationResponeObject Model.
  class LocationResponeObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique Internal identifier used to refer to this Location by Shell
    # Recharge
    # @return [Integer]
    attr_accessor :uid

    # Identifier as given by the Shell Recharge Operator, unique for that
    # Operator
    # @return [String]
    attr_accessor :external_id

    # Coordinates of the Shell Recharge Site Location
    # @return [Coordinates]
    attr_accessor :coordinates

    # Operator of this Shell Recharge Location
    # @return [String]
    attr_accessor :operator_name

    # Address of the Shell Recharge Location
    # @return [Address]
    attr_accessor :address

    # Accessibility of the Location
    # @return [Accessibility]
    attr_accessor :accessibility

    # Accessibility of the Location
    # @return [Array[EvseVO]]
    attr_accessor :evses

    # Optional Opening Hours of the Location. Please note that it is not
    # available for all sites.
    # @return [Array[OpeningHoursObject]]
    attr_accessor :opening_hours

    # ISO8601-compliant UTC datetime of the last update of the location
    # @return [String]
    attr_accessor :updated

    # optional Operator-wide arbitrary text (eg promotional, warning)
    # @return [String]
    attr_accessor :operator_comment

    # the type of the location. Could be "UNKNOWN".
    # @return [String]
    attr_accessor :location_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['external_id'] = 'externalId'
      @_hash['coordinates'] = 'coordinates'
      @_hash['operator_name'] = 'operatorName'
      @_hash['address'] = 'address'
      @_hash['accessibility'] = 'accessibility'
      @_hash['evses'] = 'evses'
      @_hash['opening_hours'] = 'openingHours'
      @_hash['updated'] = 'updated'
      @_hash['operator_comment'] = 'operatorComment'
      @_hash['location_type'] = 'locationType'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        external_id
        coordinates
        operator_name
        address
        accessibility
        evses
        opening_hours
        updated
        operator_comment
        location_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid = SKIP, external_id = SKIP, coordinates = SKIP,
                   operator_name = SKIP, address = SKIP, accessibility = SKIP,
                   evses = SKIP, opening_hours = SKIP, updated = SKIP,
                   operator_comment = SKIP, location_type = SKIP)
      @uid = uid unless uid == SKIP
      @external_id = external_id unless external_id == SKIP
      @coordinates = coordinates unless coordinates == SKIP
      @operator_name = operator_name unless operator_name == SKIP
      @address = address unless address == SKIP
      @accessibility = accessibility unless accessibility == SKIP
      @evses = evses unless evses == SKIP
      @opening_hours = opening_hours unless opening_hours == SKIP
      @updated = updated unless updated == SKIP
      @operator_comment = operator_comment unless operator_comment == SKIP
      @location_type = location_type unless location_type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      external_id = hash.key?('externalId') ? hash['externalId'] : SKIP
      coordinates = Coordinates.from_hash(hash['coordinates']) if hash['coordinates']
      operator_name = hash.key?('operatorName') ? hash['operatorName'] : SKIP
      address = Address.from_hash(hash['address']) if hash['address']
      accessibility = Accessibility.from_hash(hash['accessibility']) if hash['accessibility']
      # Parameter is an array, so we need to iterate through it
      evses = nil
      unless hash['evses'].nil?
        evses = []
        hash['evses'].each do |structure|
          evses << (EvseVO.from_hash(structure) if structure)
        end
      end

      evses = SKIP unless hash.key?('evses')
      # Parameter is an array, so we need to iterate through it
      opening_hours = nil
      unless hash['openingHours'].nil?
        opening_hours = []
        hash['openingHours'].each do |structure|
          opening_hours << (OpeningHoursObject.from_hash(structure) if structure)
        end
      end

      opening_hours = SKIP unless hash.key?('openingHours')
      updated = hash.key?('updated') ? hash['updated'] : SKIP
      operator_comment =
        hash.key?('operatorComment') ? hash['operatorComment'] : SKIP
      location_type = hash.key?('locationType') ? hash['locationType'] : SKIP

      # Create object from extracted values.
      LocationResponeObject.new(uid,
                                external_id,
                                coordinates,
                                operator_name,
                                address,
                                accessibility,
                                evses,
                                opening_hours,
                                updated,
                                operator_comment,
                                location_type)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} uid: #{@uid}, external_id: #{@external_id}, coordinates: #{@coordinates},"\
      " operator_name: #{@operator_name}, address: #{@address}, accessibility: #{@accessibility},"\
      " evses: #{@evses}, opening_hours: #{@opening_hours}, updated: #{@updated},"\
      " operator_comment: #{@operator_comment}, location_type: #{@location_type}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} uid: #{@uid.inspect}, external_id: #{@external_id.inspect}, coordinates:"\
      " #{@coordinates.inspect}, operator_name: #{@operator_name.inspect}, address:"\
      " #{@address.inspect}, accessibility: #{@accessibility.inspect}, evses: #{@evses.inspect},"\
      " opening_hours: #{@opening_hours.inspect}, updated: #{@updated.inspect}, operator_comment:"\
      " #{@operator_comment.inspect}, location_type: #{@location_type.inspect}>"
    end
  end
end
