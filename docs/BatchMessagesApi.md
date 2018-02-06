# SwaggerClient::BatchMessagesApi

All URIs are relative to *https://api.thesmsworks.co.uk/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_scheduled_batch_job**](BatchMessagesApi.md#cancel_scheduled_batch_job) | **DELETE** /batches/schedule/{batchid} | 
[**get_batch_by_id**](BatchMessagesApi.md#get_batch_by_id) | **GET** /batch/{batchid} | 
[**schedule_batch**](BatchMessagesApi.md#schedule_batch) | **POST** /batch/schedule | 
[**send_batch**](BatchMessagesApi.md#send_batch) | **POST** /batch/send | 


# **cancel_scheduled_batch_job**
> CancelledMessageResponse cancel_scheduled_batch_job(batchid)



Cancels a scheduled SMS message

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::BatchMessagesApi.new

batchid = "batchid_example" # String | The ID of the batch you would like returned


begin
  result = api_instance.cancel_scheduled_batch_job(batchid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BatchMessagesApi->cancel_scheduled_batch_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchid** | **String**| The ID of the batch you would like returned | 

### Return type

[**CancelledMessageResponse**](CancelledMessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_batch_by_id**
> MessagesResponse get_batch_by_id(batchid)



Retrieve all messages in a batch with the given batch ID

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::BatchMessagesApi.new

batchid = "batchid_example" # String | The ID of the batch you would like returned


begin
  result = api_instance.get_batch_by_id(batchid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BatchMessagesApi->get_batch_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchid** | **String**| The ID of the batch you would like returned | 

### Return type

[**MessagesResponse**](MessagesResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **schedule_batch**
> ScheduledBatchResponse schedule_batch(sms_message)



Schedules a batch of SMS messages to be sent at the date-time you specify

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::BatchMessagesApi.new

sms_message = SwaggerClient::BatchMessage.new # BatchMessage | Message properties


begin
  result = api_instance.schedule_batch(sms_message)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BatchMessagesApi->schedule_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_message** | [**BatchMessage**](BatchMessage.md)| Message properties | 

### Return type

[**ScheduledBatchResponse**](ScheduledBatchResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **send_batch**
> BatchMessageResponse send_batch(sms_message)



Send a single SMS message to multiple recipients

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: JWT
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::BatchMessagesApi.new

sms_message = SwaggerClient::BatchMessage.new # BatchMessage | Message properties


begin
  result = api_instance.send_batch(sms_message)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BatchMessagesApi->send_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_message** | [**BatchMessage**](BatchMessage.md)| Message properties | 

### Return type

[**BatchMessageResponse**](BatchMessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



