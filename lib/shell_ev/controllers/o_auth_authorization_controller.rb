# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # OAuthAuthorizationController
  class OAuthAuthorizationController < BaseController
    # Create a new OAuth 2 token.
    # @param [String] authorization Required parameter: Authorization header in
    # Basic auth format
    # @param [String] scope Optional parameter: Requested scopes as a
    # space-delimited list.
    # @param [Hash] _field_parameters Additional optional form parameters are
    # supported by this endpoint.
    # @return [OAuthToken] response from the API call
    def request_token(authorization,
                      scope: nil,
                      _field_parameters: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/oauth/token',
                                     Server::DEFAULT)
                   .form_param(new_parameter('client_credentials', key: 'grant_type'))
                   .header_param(new_parameter(authorization, key: 'Authorization'))
                   .form_param(new_parameter(scope, key: 'scope'))
                   .header_param(new_parameter('application/x-www-form-urlencoded', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .additional_form_params(_field_parameters))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(OAuthToken.method(:from_hash))
                   .local_error('400',
                                'OAuth 2 provider returned an error.',
                                OAuthProviderException)
                   .local_error('401',
                                'OAuth 2 provider says client authentication failed.',
                                OAuthProviderException))
        .execute
    end
  end
end
