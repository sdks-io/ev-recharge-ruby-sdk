# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # Address of the Shell Recharge Location
  class Address < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Street Name and Number of the Shell Recharge Location
    # @return [String]
    attr_accessor :street_and_number

    # Postal Code of the Shell Recharge Location
    # @return [String]
    attr_accessor :postal_code

    # City name of the Shell Recharge Location
    # @return [String]
    attr_accessor :city

    # ISO 3166 Alpha-2 Country Code of the Shell Recharge Location
    # @return [String]
    attr_accessor :country

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['street_and_number'] = 'streetAndNumber'
      @_hash['postal_code'] = 'postalCode'
      @_hash['city'] = 'city'
      @_hash['country'] = 'country'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        street_and_number
        postal_code
        city
        country
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(street_and_number = SKIP,
                   postal_code = SKIP,
                   city = SKIP,
                   country = SKIP)
      @street_and_number = street_and_number unless street_and_number == SKIP
      @postal_code = postal_code unless postal_code == SKIP
      @city = city unless city == SKIP
      @country = country unless country == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      street_and_number =
        hash.key?('streetAndNumber') ? hash['streetAndNumber'] : SKIP
      postal_code = hash.key?('postalCode') ? hash['postalCode'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP

      # Create object from extracted values.
      Address.new(street_and_number,
                  postal_code,
                  city,
                  country)
    end
  end
end