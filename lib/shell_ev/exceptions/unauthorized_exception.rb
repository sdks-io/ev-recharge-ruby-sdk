# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # Unauthorized class.
  class UnauthorizedException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # requestId or correlation id of the message
    # @return [String]
    attr_accessor :request_id

    # Status of the request
    # @return [String]
    attr_accessor :status

    # Exception details of the error
    # @return [Array[UnauthorizedErrMsg]]
    attr_accessor :errors

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpResponse] The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @request_id = hash.key?('requestId') ? hash['requestId'] : SKIP
      @status = hash.key?('status') ? hash['status'] : SKIP
      # Parameter is an array, so we need to iterate through it
      @errors = nil
      unless hash['errors'].nil?
        @errors = []
        hash['errors'].each do |structure|
          @errors << (UnauthorizedErrMsg.from_hash(structure) if structure)
        end
      end

      @errors = SKIP unless hash.key?('errors')
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} request_id: #{@request_id}, status: #{@status}, errors: #{@errors}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} request_id: #{@request_id.inspect}, status: #{@status.inspect}, errors:"\
      " #{@errors.inspect}>"
    end
  end
end
