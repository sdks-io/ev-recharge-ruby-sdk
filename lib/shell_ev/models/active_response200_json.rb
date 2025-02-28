# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # ActiveResponse200Json Model.
  class ActiveResponse200Json < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Mandatory UUID (according to RFC 4122 standards) for requests and
    # responses. This will be played back in the response from the request.
    # @return [UUID | String]
    attr_accessor :request_id

    # Mandatory UUID (according to RFC 4122 standards) for requests and
    # responses. This will be played back in the response from the request.
    # @return [GetChargeSessionRetrieveResponse200JsonStatusEnum]
    attr_accessor :status

    # Mandatory UUID (according to RFC 4122 standards) for requests and
    # responses. This will be played back in the response from the request.
    # @return [Array[DataActive]]
    attr_accessor :data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['request_id'] = 'requestId'
      @_hash['status'] = 'status'
      @_hash['data'] = 'data'
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

    def initialize(request_id = nil, status = nil, data = SKIP)
      @request_id = request_id
      @status = status
      @data = data unless data == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      request_id = hash.key?('requestId') ? hash['requestId'] : nil
      status = hash.key?('status') ? hash['status'] : nil
      # Parameter is an array, so we need to iterate through it
      data = nil
      unless hash['data'].nil?
        data = []
        hash['data'].each do |structure|
          data << (DataActive.from_hash(structure) if structure)
        end
      end

      data = SKIP unless hash.key?('data')

      # Create object from extracted values.
      ActiveResponse200Json.new(request_id,
                                status,
                                data)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} request_id: #{@request_id}, status: #{@status}, data: #{@data}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} request_id: #{@request_id.inspect}, status: #{@status.inspect}, data:"\
      " #{@data.inspect}>"
    end
  end
end
