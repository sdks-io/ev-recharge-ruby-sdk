# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # Tariff Model.
  class Tariff < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Tariff to start a charging session
    # @return [Float]
    attr_accessor :start_fee

    # Tariff per minute of charging time
    # @return [Float]
    attr_accessor :per_minute

    # Tariff per kWh of energy consumed
    # @return [Float]
    attr_accessor :per_k_wh

    # ISO 4217 Currency Code of the local currency.
    # @return [String]
    attr_accessor :currency

    # ISO8601-compliant UTC datetime of the last update of the Tariff
    # @return [String]
    attr_accessor :updated

    # ISO8601-compliant UTC datetime of the last update of the Tariff
    # @return [TariffVOUpdatedByEnum]
    attr_accessor :updated_by

    # Tariff structure that this tariff belongs to, typically Default unless
    # specific tariff is defined for provider
    # @return [String]
    attr_accessor :structure

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['start_fee'] = 'startFee'
      @_hash['per_minute'] = 'perMinute'
      @_hash['per_k_wh'] = 'perKWh'
      @_hash['currency'] = 'currency'
      @_hash['updated'] = 'updated'
      @_hash['updated_by'] = 'updatedBy'
      @_hash['structure'] = 'structure'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        start_fee
        per_minute
        per_k_wh
        currency
        updated
        updated_by
        structure
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(start_fee = SKIP, per_minute = SKIP, per_k_wh = SKIP,
                   currency = SKIP, updated = SKIP, updated_by = SKIP,
                   structure = SKIP)
      @start_fee = start_fee unless start_fee == SKIP
      @per_minute = per_minute unless per_minute == SKIP
      @per_k_wh = per_k_wh unless per_k_wh == SKIP
      @currency = currency unless currency == SKIP
      @updated = updated unless updated == SKIP
      @updated_by = updated_by unless updated_by == SKIP
      @structure = structure unless structure == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      start_fee = hash.key?('startFee') ? hash['startFee'] : SKIP
      per_minute = hash.key?('perMinute') ? hash['perMinute'] : SKIP
      per_k_wh = hash.key?('perKWh') ? hash['perKWh'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      updated = hash.key?('updated') ? hash['updated'] : SKIP
      updated_by = hash.key?('updatedBy') ? hash['updatedBy'] : SKIP
      structure = hash.key?('structure') ? hash['structure'] : SKIP

      # Create object from extracted values.
      Tariff.new(start_fee,
                 per_minute,
                 per_k_wh,
                 currency,
                 updated,
                 updated_by,
                 structure)
    end
  end
end
