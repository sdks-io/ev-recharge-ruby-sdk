# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # Electrical Properties of the Connector
  class ElectricalProperties < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [ElectricalPropertiesPowerTypeEnum]
    attr_accessor :power_type

    # Voltage in Volts for this connector
    # @return [Float]
    attr_accessor :voltage

    # Electric Current in Amperes for this connector
    # @return [Float]
    attr_accessor :amperage

    # Power in Kilowatts for this connector
    # @return [Float]
    attr_accessor :max_electric_power

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['power_type'] = 'powerType'
      @_hash['voltage'] = 'voltage'
      @_hash['amperage'] = 'amperage'
      @_hash['max_electric_power'] = 'maxElectricPower'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        power_type
        voltage
        amperage
        max_electric_power
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(power_type = SKIP, voltage = SKIP, amperage = SKIP,
                   max_electric_power = SKIP)
      @power_type = power_type unless power_type == SKIP
      @voltage = voltage unless voltage == SKIP
      @amperage = amperage unless amperage == SKIP
      @max_electric_power = max_electric_power unless max_electric_power == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      power_type = hash.key?('powerType') ? hash['powerType'] : SKIP
      voltage = hash.key?('voltage') ? hash['voltage'] : SKIP
      amperage = hash.key?('amperage') ? hash['amperage'] : SKIP
      max_electric_power =
        hash.key?('maxElectricPower') ? hash['maxElectricPower'] : SKIP

      # Create object from extracted values.
      ElectricalProperties.new(power_type,
                               voltage,
                               amperage,
                               max_electric_power)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} power_type: #{@power_type}, voltage: #{@voltage}, amperage: #{@amperage},"\
      " max_electric_power: #{@max_electric_power}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} power_type: #{@power_type.inspect}, voltage: #{@voltage.inspect}, amperage:"\
      " #{@amperage.inspect}, max_electric_power: #{@max_electric_power.inspect}>"
    end
  end
end
