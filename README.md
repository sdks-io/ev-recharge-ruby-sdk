
# Getting Started with Shell EV

## Introduction

This API Product provides the list of all Shell Recharge locations. The list includes all Shell Recharge network and all locations available through our roaming partners.

Supported Functions

* Get the list of all the locations and its details.
* Get the details of a particular location.
* Get the list of locations nearby using the latitude and longitude.
* Get the list of locations for a given set of bounds with different zoom levels.

The Charging endpoints provides control to start, stop and get status of the charging session.

Supported Functions

* Start a charging session\n
* Stop a charging session \n
* Retrieve the status of a charging session \n
* Retrieve the list of all active sessions for a card

Go to the Shell Developer Portal: [https://developer.shell.com](https://developer.shell.com)

## Install the Package

Install the gem from the command line:

```ruby
gem install ev-recharge-sdk -v 1.1.0
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'ev-recharge-sdk', '1.1.0'
```

For additional gem details, see the [RubyGems page for the ev-recharge-sdk gem](https://rubygems.org/gems/ev-recharge-sdk/versions/1.1.0).

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/1.1.0/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `environment` | `Environment` | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `http_callback` | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| `client_credentials_auth_credentials` | [`ClientCredentialsAuthCredentials`](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/1.1.0/doc/$a/https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/1.1.0/oauth-2-client-credentials-grant.md) | The credential object for OAuth 2 Client Credentials Grant |

The API client can be initialized as follows:

```ruby
client = ShellEv::Client.new(
  client_credentials_auth_credentials: ClientCredentialsAuthCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_client_secret: 'OAuthClientSecret'
  ),
  environment: Environment::PRODUCTION
)
```

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| production | **Default** Production |
| environment2 | Test |

## Authorization

This API uses the following authentication schemes.

* [`BearerAuth (OAuth 2 Client Credentials Grant)`](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/1.1.0/doc/$a/https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/1.1.0/oauth-2-client-credentials-grant.md)

## List of APIs

* [Locations](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/1.1.0/doc/controllers/locations.md)
* [Charging](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/1.1.0/doc/controllers/charging.md)

## Classes Documentation

* [Utility Classes](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/1.1.0/doc/utility-classes.md)
* [HttpResponse](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/1.1.0/doc/http-response.md)
* [HttpRequest](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/1.1.0/doc/http-request.md)

