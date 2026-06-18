
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

```bash
gem install ev-recharge-sdk -v 2.2.0
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'ev-recharge-sdk', '2.2.0'
```

For additional gem details, see the [RubyGems page for the ev-recharge-sdk gem](https://rubygems.org/gems/ev-recharge-sdk/versions/2.2.0).

## IRB Console Usage

You can explore the SDK interactively using IRB in two ways

### 1. Use IRB with Installed Gem

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and type the following command to start the irb console.

```bash
irb
```

Now you can load the SDK in the IRB

```ruby
require 'shell_ev'
include ShellEv
```

### 2. Use IRB within SDK

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and navigate to the root folder of SDK.

```
cd path/to/shell_ev
```

Now you can start the preconfigured irb console by running the following command

```bash
ruby bin/console
```

**_Note:_** This automatically loads the SDK from lib/

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| environment | [`Environment`](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/README.md#environments) | The API environment. <br> **Default: `Environment.SIT`** |
| connection | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| adapter | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| timeout | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| max_retries | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| retry_interval | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| backoff_factor | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| retry_statuses | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| retry_methods | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| http_callback | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| proxy_settings | [`ProxySettings`](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/doc/proxy-settings.md) | Optional proxy configuration to route HTTP requests through a proxy server. |
| client_credentials_auth_credentials | [`ClientCredentialsAuthCredentials`](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/doc/auth/oauth-2-client-credentials-grant.md) | The credential object for OAuth 2 Client Credentials Grant |

The API client can be initialized as follows:

### Code-Based Client Initialization

```ruby
require 'shell_ev'
include ShellEv

client = Client.new(
  client_credentials_auth_credentials: ClientCredentialsAuthCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_client_secret: 'OAuthClientSecret'
  ),
  environment: Environment::SIT
)
```

### Environment-Based Client Initialization

```ruby
require 'shell_ev'
include ShellEv

# Create client from environment
client = Client.from_env
```

See the [`Environment-Based Client Initialization`](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/doc/environment-based-client-initialization.md) section for details.

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| SIT | **Default** |
| PRODUCTION | - |

## Authorization

This API uses the following authentication schemes.

* [`BearerAuth (OAuth 2 Client Credentials Grant)`](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/doc/auth/oauth-2-client-credentials-grant.md)

## List of APIs

* [Locations](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/doc/controllers/locations.md)
* [Charging](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/doc/controllers/charging.md)

## SDK Infrastructure

### Configuration

* [ProxySettings](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/doc/proxy-settings.md)
* [Environment-Based Client Initialization](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/doc/environment-based-client-initialization.md)

### HTTP

* [HttpResponse](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/doc/http-response.md)
* [HttpRequest](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/doc/http-request.md)

### Utilities

* [ApiHelper](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/doc/api-helper.md)
* [DateTimeHelper](https://www.github.com/sdks-io/ev-recharge-ruby-sdk/tree/2.2.0/doc/date-time-helper.md)

