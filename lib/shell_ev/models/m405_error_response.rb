# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # Method Not Allowed
  class M405ErrorResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Mandatory UUID (according to RFC 4122 standards) for requests and
    # responses. This will be played back in the response from the request.
    # @return [String]
    attr_accessor :request_id

    # Indicates overall status of the request
    # @return [String]
    attr_accessor :status

    # Indicates overall status of the request
    # @return [Array[M405ErrorResponseError]]
    attr_accessor :errors

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['request_id'] = 'RequestId'
      @_hash['status'] = 'Status'
      @_hash['errors'] = 'Errors'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        errors
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(request_id = nil,
                   status = nil,
                   errors = SKIP)
      @request_id = request_id
      @status = status
      @errors = errors unless errors == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      request_id = hash.key?('RequestId') ? hash['RequestId'] : nil
      status = hash.key?('Status') ? hash['Status'] : nil
      # Parameter is an array, so we need to iterate through it
      errors = nil
      unless hash['Errors'].nil?
        errors = []
        hash['Errors'].each do |structure|
          errors << (M405ErrorResponseError.from_hash(structure) if structure)
        end
      end

      errors = SKIP unless hash.key?('Errors')

      # Create object from extracted values.
      M405ErrorResponse.new(request_id,
                            status,
                            errors)
    end
  end
end
