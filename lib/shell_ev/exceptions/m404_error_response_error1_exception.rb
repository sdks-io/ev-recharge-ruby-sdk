# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # Invalid charge token with given EmaId was not found. Backend HTTP 410 should
  # be transformed to 404.
  class M404ErrorResponseError1Exception < APIException
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
    # @return [Array[M404ErrorResponseError]]
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
      @request_id = hash.key?('RequestId') ? hash['RequestId'] : nil
      @status = hash.key?('Status') ? hash['Status'] : nil
      # Parameter is an array, so we need to iterate through it
      @errors = nil
      unless hash['Errors'].nil?
        @errors = []
        hash['Errors'].each do |structure|
          @errors << (M404ErrorResponseError.from_hash(structure) if structure)
        end
      end

      @errors = SKIP unless hash.key?('Errors')
    end
  end
end
