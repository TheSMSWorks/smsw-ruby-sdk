# OpenapiClient::BatchMessagesApi

All URIs are relative to *https://api.thesmsworks.co.uk/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_any_post**](BatchMessagesApi.md#batch_any_post) | **POST** /batch/any |  |
| [**batch_batchid_get**](BatchMessagesApi.md#batch_batchid_get) | **GET** /batch/{batchid} |  |
| [**batch_schedule_post**](BatchMessagesApi.md#batch_schedule_post) | **POST** /batch/schedule |  |
| [**batch_send_post**](BatchMessagesApi.md#batch_send_post) | **POST** /batch/send |  |
| [**batches_schedule_batchid_delete**](BatchMessagesApi.md#batches_schedule_batchid_delete) | **DELETE** /batches/schedule/{batchid} |  |


## batch_any_post

> <BatchMessageResponse> batch_any_post(messages)



Sends a collection of unique SMS messages. Batches may contain up to 5000 messages at a time.

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

api_instance = OpenapiClient::BatchMessagesApi.new
messages = { ... } # Object | An array of messages

begin
  
  result = api_instance.batch_any_post(messages)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BatchMessagesApi->batch_any_post: #{e}"
end
```

#### Using the batch_any_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchMessageResponse>, Integer, Hash)> batch_any_post_with_http_info(messages)

```ruby
begin
  
  data, status_code, headers = api_instance.batch_any_post_with_http_info(messages)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchMessageResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BatchMessagesApi->batch_any_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messages** | **Object** | An array of messages |  |

### Return type

[**BatchMessageResponse**](BatchMessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8


## batch_batchid_get

> <Array<MessageResponse>> batch_batchid_get(batchid)



Retrieve all messages in a batch with the given batch ID

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

api_instance = OpenapiClient::BatchMessagesApi.new
batchid = 'batchid_example' # String | The ID of the batch you would like returned

begin
  
  result = api_instance.batch_batchid_get(batchid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BatchMessagesApi->batch_batchid_get: #{e}"
end
```

#### Using the batch_batchid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MessageResponse>>, Integer, Hash)> batch_batchid_get_with_http_info(batchid)

```ruby
begin
  
  data, status_code, headers = api_instance.batch_batchid_get_with_http_info(batchid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MessageResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BatchMessagesApi->batch_batchid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batchid** | **String** | The ID of the batch you would like returned |  |

### Return type

[**Array&lt;MessageResponse&gt;**](MessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8


## batch_schedule_post

> <ScheduledBatchResponse> batch_schedule_post(sms_message)



Schedules a batch of SMS messages to be sent at the date time you specify

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

api_instance = OpenapiClient::BatchMessagesApi.new
sms_message = OpenapiClient::BatchMessage.new({sender: 'YourCompany', destinations: ["447777777777", "447777777778", "447777777779"], content: 'My super awesome batch message'}) # BatchMessage | Message properties

begin
  
  result = api_instance.batch_schedule_post(sms_message)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BatchMessagesApi->batch_schedule_post: #{e}"
end
```

#### Using the batch_schedule_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduledBatchResponse>, Integer, Hash)> batch_schedule_post_with_http_info(sms_message)

```ruby
begin
  
  data, status_code, headers = api_instance.batch_schedule_post_with_http_info(sms_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduledBatchResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BatchMessagesApi->batch_schedule_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms_message** | [**BatchMessage**](BatchMessage.md) | Message properties |  |

### Return type

[**ScheduledBatchResponse**](ScheduledBatchResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8


## batch_send_post

> <BatchMessageResponse> batch_send_post(sms_message)



Send a single SMS message to multiple recipients.  Batches may contain up to 5000 messages at a time.

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

api_instance = OpenapiClient::BatchMessagesApi.new
sms_message = OpenapiClient::BatchMessage.new({sender: 'YourCompany', destinations: ["447777777777", "447777777778", "447777777779"], content: 'My super awesome batch message'}) # BatchMessage | Message properties

begin
  
  result = api_instance.batch_send_post(sms_message)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BatchMessagesApi->batch_send_post: #{e}"
end
```

#### Using the batch_send_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchMessageResponse>, Integer, Hash)> batch_send_post_with_http_info(sms_message)

```ruby
begin
  
  data, status_code, headers = api_instance.batch_send_post_with_http_info(sms_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchMessageResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BatchMessagesApi->batch_send_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms_message** | [**BatchMessage**](BatchMessage.md) | Message properties |  |

### Return type

[**BatchMessageResponse**](BatchMessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8


## batches_schedule_batchid_delete

> <CancelledMessageResponse> batches_schedule_batchid_delete(batchid)



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

api_instance = OpenapiClient::BatchMessagesApi.new
batchid = 'batchid_example' # String | The ID of the batch you would like returned

begin
  
  result = api_instance.batches_schedule_batchid_delete(batchid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BatchMessagesApi->batches_schedule_batchid_delete: #{e}"
end
```

#### Using the batches_schedule_batchid_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CancelledMessageResponse>, Integer, Hash)> batches_schedule_batchid_delete_with_http_info(batchid)

```ruby
begin
  
  data, status_code, headers = api_instance.batches_schedule_batchid_delete_with_http_info(batchid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CancelledMessageResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BatchMessagesApi->batches_schedule_batchid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batchid** | **String** | The ID of the batch you would like returned |  |

### Return type

[**CancelledMessageResponse**](CancelledMessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8

