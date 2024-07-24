# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # ChargingController
  class ChargingController < BaseController
    # This endpoint start the charging session for the user.
    # @param [UUID | String] request_id Required parameter: RequestId must be
    # unique identifier value that can be used by the consumer to correlate each
    # request /response .<br>Format.<br> Its canonical textual representation,
    # the 16 octets of a UUID are represented as 32 hexadecimal (base-16)
    # digits, displayed in five groups separated by hyphens, in the form
    # 8-4-4-4-12 for a total of 36 characters (32 hexadecimal characters and 4
    # hyphens) <br>
    # @param [ChargesessionStartBody] body Optional parameter: Example:
    # @return [InlineResponse202] response from the API call
    def start(request_id,
              body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/ev/v1/charge-session/start',
                                     Server::DEFAULT)
                   .header_param(new_parameter(request_id, key: 'RequestId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BearerAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(InlineResponse202.method(:from_hash))
                    .local_error('400',
                                 'The server cannot or will not process the request due to'\
                                  ' something that is perceived to be a client error (e.g.,'\
                                  ' malformed request syntax, invalid request message framing, or'\
                                  ' deceptive request routing).',
                                 BadRequestException)
                    .local_error('401',
                                 'The request has not been applied because it lacks valid'\
                                  ' authentication credentials for the target resource.',
                                 UnauthorizedException)
                    .local_error('404',
                                 'Location Not Found',
                                 NotFoundException)
                    .local_error('429',
                                 'The Request reached maximum allocated rate limit',
                                 TooManyRequestsException)
                    .local_error('500',
                                 'Internal Server error',
                                 InternalServerErrorException)
                    .local_error('503',
                                 'Service unavailable',
                                 ServiceunavailableException))
        .execute
    end

    # Accepts a request to stop an active session when a valid session id is
    # provided.
    # @param [UUID | String] request_id Required parameter: RequestId must be
    # unique identifier value that can be used by the consumer to correlate each
    # request /response .<br>Format.<br> Its canonical textual representation,
    # the 16 octets of a UUID are represented as 32 hexadecimal (base-16)
    # digits, displayed in five groups separated by hyphens, in the form
    # 8-4-4-4-12 for a total of 36 characters (32 hexadecimal characters and 4
    # hyphens) <br>
    # @param [String] session_id Required parameter: Session Id
    # @return [InlineResponse2021] response from the API call
    def stop(request_id,
             session_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/ev/v1/charge-session/stop',
                                     Server::DEFAULT)
                   .header_param(new_parameter(request_id, key: 'RequestId'))
                   .query_param(new_parameter(session_id, key: 'sessionId'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BearerAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(InlineResponse2021.method(:from_hash))
                    .local_error('400',
                                 'The server cannot or will not process the request due to'\
                                  ' something that is perceived to be a client error (e.g.,'\
                                  ' malformed request syntax, invalid request message framing, or'\
                                  ' deceptive request routing).',
                                 BadRequestException)
                    .local_error('401',
                                 'The request has not been applied because it lacks valid'\
                                  ' authentication credentials for the target resource.',
                                 UnauthorizedException)
                    .local_error('404',
                                 'Location Not Found',
                                 NotFoundException)
                    .local_error('429',
                                 'The Request reached maximum allocated rate limit',
                                 TooManyRequestsException)
                    .local_error('500',
                                 'Internal Server error',
                                 InternalServerErrorException)
                    .local_error('503',
                                 'Service unavailable',
                                 ServiceunavailableException))
        .execute
    end

    # This endpoint returns the details of the session if the session is found.
    # @param [UUID | String] request_id Required parameter: RequestId must be
    # unique identifier value that can be used by the consumer to correlate each
    # request /response .<br>Format.<br> Its canonical textual representation,
    # the 16 octets of a UUID are represented as 32 hexadecimal (base-16)
    # digits, displayed in five groups separated by hyphens, in the form
    # 8-4-4-4-12 for a total of 36 characters (32 hexadecimal characters and 4
    # hyphens) <br>
    # @param [String] session_id Required parameter: Session Id
    # @return [GetChargeSessionRetrieveResponse200Json] response from the API call
    def get_charge_session_retrieve(request_id,
                                    session_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/ev/v1/charge-session/retrieve',
                                     Server::DEFAULT)
                   .header_param(new_parameter(request_id, key: 'RequestId'))
                   .query_param(new_parameter(session_id, key: 'sessionId'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BearerAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetChargeSessionRetrieveResponse200Json.method(:from_hash))
                    .local_error('400',
                                 'The server cannot or will not process the request due to'\
                                  ' something that is perceived to be a client error (e.g.,'\
                                  ' malformed request syntax, invalid request message framing, or'\
                                  ' deceptive request routing).',
                                 BadRequestException)
                    .local_error('401',
                                 'The request has not been applied because it lacks valid'\
                                  ' authentication credentials for the target resource.',
                                 UnauthorizedException)
                    .local_error('404',
                                 'Location Not Found',
                                 NotFoundException)
                    .local_error('429',
                                 'The Request reached maximum allocated rate limit',
                                 TooManyRequestsException)
                    .local_error('500',
                                 'Internal Server error',
                                 InternalServerErrorException)
                    .local_error('503',
                                 'Service unavailable',
                                 ServiceunavailableException))
        .execute
    end

    # Fetrches the active sessions for user.
    # @param [UUID | String] request_id Required parameter: RequestId must be
    # unique identifier value that can be used by the consumer to correlate each
    # request /response .<br>Format.<br> Its canonical textual representation,
    # the 16 octets of a UUID are represented as 32 hexadecimal (base-16)
    # digits, displayed in five groups separated by hyphens, in the form
    # 8-4-4-4-12 for a total of 36 characters (32 hexadecimal characters and 4
    # hyphens) <br>
    # @param [String] ema_id Required parameter: Emobility Account
    # Identifier(Ema-ID)
    # @return [ActiveResponse200Json] response from the API call
    def active(request_id,
               ema_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/ev/v1/charge-session/active',
                                     Server::DEFAULT)
                   .header_param(new_parameter(request_id, key: 'RequestId'))
                   .query_param(new_parameter(ema_id, key: 'emaId'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BearerAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ActiveResponse200Json.method(:from_hash)))
        .execute
    end
  end
end
