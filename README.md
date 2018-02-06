# swagger_client

SwaggerClient - the Ruby gem for the The SMS Works API

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Install from rubygems.org

To install from rubygems:

```shell
gem install sms_works_sdk
```

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

api_instance = SwaggerClient::AuthApi.new

customerid = "customerid_example" # String | The Customer ID


begin
  result = api_instance.key_secret(customerid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthApi->key_secret: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.thesmsworks.co.uk:8080/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::AuthApi* | [**key_secret**](docs/AuthApi.md#key_secret) | **GET** /auth/getApiKey | 
*SwaggerClient::AuthApi* | [**login**](docs/AuthApi.md#login) | **POST** /auth/token | 
*SwaggerClient::BatchMessagesApi* | [**cancel_scheduled_batch_job**](docs/BatchMessagesApi.md#cancel_scheduled_batch_job) | **DELETE** /batches/schedule/{batchid} | 
*SwaggerClient::BatchMessagesApi* | [**get_batch_by_id**](docs/BatchMessagesApi.md#get_batch_by_id) | **GET** /batch/{batchid} | 
*SwaggerClient::BatchMessagesApi* | [**schedule_batch**](docs/BatchMessagesApi.md#schedule_batch) | **POST** /batch/schedule | 
*SwaggerClient::BatchMessagesApi* | [**send_batch**](docs/BatchMessagesApi.md#send_batch) | **POST** /batch/send | 
*SwaggerClient::MessagesApi* | [**cancel_scheduled_job**](docs/MessagesApi.md#cancel_scheduled_job) | **DELETE** /messages/schedule/{messageid} | 
*SwaggerClient::MessagesApi* | [**get_message_by_id**](docs/MessagesApi.md#get_message_by_id) | **GET** /messages/{messageid} | 
*SwaggerClient::MessagesApi* | [**get_messages**](docs/MessagesApi.md#get_messages) | **POST** /messages | 
*SwaggerClient::MessagesApi* | [**schedule_message**](docs/MessagesApi.md#schedule_message) | **POST** /message/schedule | 
*SwaggerClient::MessagesApi* | [**send_message**](docs/MessagesApi.md#send_message) | **POST** /message/send | 
*SwaggerClient::UtilsApi* | [**hello**](docs/UtilsApi.md#hello) | **GET** /utils/hello | 


## Documentation for Models

 - [SwaggerClient::ApiKeyResponse](docs/ApiKeyResponse.md)
 - [SwaggerClient::BatchMessage](docs/BatchMessage.md)
 - [SwaggerClient::BatchMessageResponse](docs/BatchMessageResponse.md)
 - [SwaggerClient::CancelledMessageResponse](docs/CancelledMessageResponse.md)
 - [SwaggerClient::ErrorModel](docs/ErrorModel.md)
 - [SwaggerClient::HelloWorldResponse](docs/HelloWorldResponse.md)
 - [SwaggerClient::Login](docs/Login.md)
 - [SwaggerClient::Message](docs/Message.md)
 - [SwaggerClient::MessageResponse](docs/MessageResponse.md)
 - [SwaggerClient::MessagesResponse](docs/MessagesResponse.md)
 - [SwaggerClient::MessagesResponseMessages](docs/MessagesResponseMessages.md)
 - [SwaggerClient::Query](docs/Query.md)
 - [SwaggerClient::ScheduledBatchResponse](docs/ScheduledBatchResponse.md)
 - [SwaggerClient::ScheduledMessageResponse](docs/ScheduledMessageResponse.md)
 - [SwaggerClient::SendMessageResponse](docs/SendMessageResponse.md)
 - [SwaggerClient::TokenResponse](docs/TokenResponse.md)
 - [SwaggerClient::ExtendedErrorModel](docs/ExtendedErrorModel.md)


## Documentation for Authorization


### JWT

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

## Test calls in Postman

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/5348de8f62f83cddcee3)
