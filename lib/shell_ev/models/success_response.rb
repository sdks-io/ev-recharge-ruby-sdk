# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # SuccessResponse Model.
  class SuccessResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A unique request id in GUID format. The value is written to the Shell API
    # Platform audit log for end to end traceability of a request.
    # @return [String]
    attr_accessor :request_id

    # Indicates overall status of the request
    # @return [ResponseBaseStatusEnum]
    attr_accessor :status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['request_id'] = 'RequestId'
      @_hash['status'] = 'Status'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(request_id = nil,
                   status = nil)
      @request_id = request_id
      @status = status
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      request_id = hash.key?('RequestId') ? hash['RequestId'] : nil
      status = hash.key?('Status') ? hash['Status'] : nil

      # Create object from extracted values.
      SuccessResponse.new(request_id,
                          status)
    end
  end
end
