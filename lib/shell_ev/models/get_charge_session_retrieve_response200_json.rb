# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # GetChargeSessionRetrieveResponse200Json Model.
  class GetChargeSessionRetrieveResponse200Json < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A unique request id in GUID format. The value is written to the Shell API
    # Platform audit log for end to end traceability of a request.
    # @return [UUID | String]
    attr_accessor :request_id

    # Indicates overall status of the request
    # @return [GetChargeSessionRetrieveResponse200JsonStatusEnum]
    attr_accessor :status

    # Indicates overall status of the request
    # @return [Array[DataRetrieve]]
    attr_accessor :data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['request_id'] = 'RequestId'
      @_hash['status'] = 'Status'
      @_hash['data'] = 'Data'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        data
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(request_id = nil,
                   status = nil,
                   data = SKIP)
      @request_id = request_id
      @status = status
      @data = data unless data == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      request_id = hash.key?('RequestId') ? hash['RequestId'] : nil
      status = hash.key?('Status') ? hash['Status'] : nil
      # Parameter is an array, so we need to iterate through it
      data = nil
      unless hash['Data'].nil?
        data = []
        hash['Data'].each do |structure|
          data << (DataRetrieve.from_hash(structure) if structure)
        end
      end

      data = SKIP unless hash.key?('Data')

      # Create object from extracted values.
      GetChargeSessionRetrieveResponse200Json.new(request_id,
                                                  status,
                                                  data)
    end
  end
end
