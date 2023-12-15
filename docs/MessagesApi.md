# OpenapiClient::MessagesApi

All URIs are relative to *https://api.thesmsworks.co.uk/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**message_schedule_post**](MessagesApi.md#message_schedule_post) | **POST** /message/schedule |  |
| [**message_send_post**](MessagesApi.md#message_send_post) | **POST** /message/send |  |
| [**messages_failed_post**](MessagesApi.md#messages_failed_post) | **POST** /messages/failed |  |
| [**messages_inbox_post**](MessagesApi.md#messages_inbox_post) | **POST** /messages/inbox |  |
| [**messages_messageid_delete**](MessagesApi.md#messages_messageid_delete) | **DELETE** /messages/{messageid} |  |
| [**messages_messageid_get**](MessagesApi.md#messages_messageid_get) | **GET** /messages/{messageid} |  |
| [**messages_post**](MessagesApi.md#messages_post) | **POST** /messages |  |
| [**messages_schedule_get**](MessagesApi.md#messages_schedule_get) | **GET** /messages/schedule |  |
| [**messages_schedule_messageid_delete**](MessagesApi.md#messages_schedule_messageid_delete) | **DELETE** /messages/schedule/{messageid} |  |
| [**send_flash_message**](MessagesApi.md#send_flash_message) | **POST** /message/flash |  |


## message_schedule_post

> <Array<ScheduledMessageResponse>> message_schedule_post(sms_message)



Schedules an SMS message to be sent at the date-time you specify

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['JWT'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['JWT'] = 'Bearer'
end

api_instance = OpenapiClient::MessagesApi.new
sms_message = OpenapiClient::Message.new({sender: 'YourCompany', destination: '447777777777', content: 'Your super awesome message'}) # Message | Message properties

begin
  
  result = api_instance.message_schedule_post(sms_message)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->message_schedule_post: #{e}"
end
```

#### Using the message_schedule_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ScheduledMessageResponse>>, Integer, Hash)> message_schedule_post_with_http_info(sms_message)

```ruby
begin
  
  data, status_code, headers = api_instance.message_schedule_post_with_http_info(sms_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ScheduledMessageResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->message_schedule_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms_message** | [**Message**](Message.md) | Message properties |  |

### Return type

[**Array&lt;ScheduledMessageResponse&gt;**](ScheduledMessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8


## message_send_post

> <SendMessageResponse> message_send_post(sms_message)



Send an SMS Message

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['JWT'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['JWT'] = 'Bearer'
end

api_instance = OpenapiClient::MessagesApi.new
sms_message = OpenapiClient::Message.new({sender: 'YourCompany', destination: '447777777777', content: 'Your super awesome message'}) # Message | Message properties

begin
  
  result = api_instance.message_send_post(sms_message)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->message_send_post: #{e}"
end
```

#### Using the message_send_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendMessageResponse>, Integer, Hash)> message_send_post_with_http_info(sms_message)

```ruby
begin
  
  data, status_code, headers = api_instance.message_send_post_with_http_info(sms_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendMessageResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->message_send_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms_message** | [**Message**](Message.md) | Message properties |  |

### Return type

[**SendMessageResponse**](SendMessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8


## messages_failed_post

> <Array<MessageResponse>> messages_failed_post(query)



Get failed messages matching your search criteria

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['JWT'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['JWT'] = 'Bearer'
end

api_instance = OpenapiClient::MessagesApi.new
query = OpenapiClient::Query.new # Query | 

begin
  
  result = api_instance.messages_failed_post(query)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_failed_post: #{e}"
end
```

#### Using the messages_failed_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MessageResponse>>, Integer, Hash)> messages_failed_post_with_http_info(query)

```ruby
begin
  
  data, status_code, headers = api_instance.messages_failed_post_with_http_info(query)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MessageResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_failed_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | [**Query**](Query.md) |  |  |

### Return type

[**Array&lt;MessageResponse&gt;**](MessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8


## messages_inbox_post

> <Array<MessageResponse>> messages_inbox_post(query)



Get unread uncoming messages matching your search criteria

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['JWT'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['JWT'] = 'Bearer'
end

api_instance = OpenapiClient::MessagesApi.new
query = OpenapiClient::Query.new # Query | 

begin
  
  result = api_instance.messages_inbox_post(query)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_inbox_post: #{e}"
end
```

#### Using the messages_inbox_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MessageResponse>>, Integer, Hash)> messages_inbox_post_with_http_info(query)

```ruby
begin
  
  data, status_code, headers = api_instance.messages_inbox_post_with_http_info(query)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MessageResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_inbox_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | [**Query**](Query.md) |  |  |

### Return type

[**Array&lt;MessageResponse&gt;**](MessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8


## messages_messageid_delete

> <DeletedMessageResponse> messages_messageid_delete(messageid)



Delete the message with the mathcing messageid

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['JWT'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['JWT'] = 'Bearer'
end

api_instance = OpenapiClient::MessagesApi.new
messageid = 'messageid_example' # String | The ID of the message you would like returned

begin
  
  result = api_instance.messages_messageid_delete(messageid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_messageid_delete: #{e}"
end
```

#### Using the messages_messageid_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedMessageResponse>, Integer, Hash)> messages_messageid_delete_with_http_info(messageid)

```ruby
begin
  
  data, status_code, headers = api_instance.messages_messageid_delete_with_http_info(messageid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedMessageResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_messageid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messageid** | **String** | The ID of the message you would like returned |  |

### Return type

[**DeletedMessageResponse**](DeletedMessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8


## messages_messageid_get

> <MessageResponse> messages_messageid_get(messageid)



Retrieve a logged message by the message ID

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['JWT'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['JWT'] = 'Bearer'
end

api_instance = OpenapiClient::MessagesApi.new
messageid = 'messageid_example' # String | The ID of the message you would like returned

begin
  
  result = api_instance.messages_messageid_get(messageid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_messageid_get: #{e}"
end
```

#### Using the messages_messageid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> messages_messageid_get_with_http_info(messageid)

```ruby
begin
  
  data, status_code, headers = api_instance.messages_messageid_get_with_http_info(messageid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_messageid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messageid** | **String** | The ID of the message you would like returned |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8


## messages_post

> <Array<MessageResponse>> messages_post(query)



Retrieve up to 1000 messages matching your search criteria

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['JWT'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['JWT'] = 'Bearer'
end

api_instance = OpenapiClient::MessagesApi.new
query = OpenapiClient::Query.new # Query | 

begin
  
  result = api_instance.messages_post(query)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_post: #{e}"
end
```

#### Using the messages_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MessageResponse>>, Integer, Hash)> messages_post_with_http_info(query)

```ruby
begin
  
  data, status_code, headers = api_instance.messages_post_with_http_info(query)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MessageResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | [**Query**](Query.md) |  |  |

### Return type

[**Array&lt;MessageResponse&gt;**](MessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8


## messages_schedule_get

> <ScheduledMessagesResponse> messages_schedule_get



Returns a list of messages scheduled from your account, comprising any messages scheduled in the last 3 months and any scheduled to send in the future

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['JWT'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['JWT'] = 'Bearer'
end

api_instance = OpenapiClient::MessagesApi.new

begin
  
  result = api_instance.messages_schedule_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_schedule_get: #{e}"
end
```

#### Using the messages_schedule_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduledMessagesResponse>, Integer, Hash)> messages_schedule_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.messages_schedule_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduledMessagesResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_schedule_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ScheduledMessagesResponse**](ScheduledMessagesResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8


## messages_schedule_messageid_delete

> <CancelledMessageResponse> messages_schedule_messageid_delete(messageid)



Cancels a scheduled SMS message

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['JWT'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['JWT'] = 'Bearer'
end

api_instance = OpenapiClient::MessagesApi.new
messageid = 'messageid_example' # String | The ID of the message you would like returned

begin
  
  result = api_instance.messages_schedule_messageid_delete(messageid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_schedule_messageid_delete: #{e}"
end
```

#### Using the messages_schedule_messageid_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CancelledMessageResponse>, Integer, Hash)> messages_schedule_messageid_delete_with_http_info(messageid)

```ruby
begin
  
  data, status_code, headers = api_instance.messages_schedule_messageid_delete_with_http_info(messageid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CancelledMessageResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->messages_schedule_messageid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messageid** | **String** | The ID of the message you would like returned |  |

### Return type

[**CancelledMessageResponse**](CancelledMessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8


## send_flash_message

> <SendMessageResponse> send_flash_message(sms_message)



Sends an SMS flash message, which appears on the recipients lock screen

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['JWT'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['JWT'] = 'Bearer'
end

api_instance = OpenapiClient::MessagesApi.new
sms_message = OpenapiClient::Message.new({sender: 'YourCompany', destination: '447777777777', content: 'Your super awesome message'}) # Message | Message properties

begin
  
  result = api_instance.send_flash_message(sms_message)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->send_flash_message: #{e}"
end
```

#### Using the send_flash_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendMessageResponse>, Integer, Hash)> send_flash_message_with_http_info(sms_message)

```ruby
begin
  
  data, status_code, headers = api_instance.send_flash_message_with_http_info(sms_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendMessageResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->send_flash_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms_message** | [**Message**](Message.md) | Message properties |  |

### Return type

[**SendMessageResponse**](SendMessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8

