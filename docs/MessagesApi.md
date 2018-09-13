# SwaggerClient::MessagesApi

All URIs are relative to *https://api.thesmsworks.co.uk/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_scheduled_job**](MessagesApi.md#cancel_scheduled_job) | **DELETE** /messages/schedule/{messageid} | 
[**get_inbox_messages**](MessagesApi.md#get_inbox_messages) | **POST** /messages/inbox | 
[**get_message_by_id**](MessagesApi.md#get_message_by_id) | **GET** /messages/{messageid} | 
[**get_messages**](MessagesApi.md#get_messages) | **POST** /messages | 
[**schedule_message**](MessagesApi.md#schedule_message) | **POST** /message/schedule | 
[**send_message**](MessagesApi.md#send_message) | **POST** /message/send | 


# **cancel_scheduled_job**
> CancelledMessageResponse cancel_scheduled_job(messageid)



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

api_instance = SwaggerClient::MessagesApi.new

messageid = "messageid_example" # String | The ID of the message you would like returned


begin
  result = api_instance.cancel_scheduled_job(messageid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MessagesApi->cancel_scheduled_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageid** | **String**| The ID of the message you would like returned | 

### Return type

[**CancelledMessageResponse**](CancelledMessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_inbox_messages**
> MessagesResponse get_inbox_messages(query)



Get unread uncoming messages matching your search criteria

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

api_instance = SwaggerClient::MessagesApi.new

query = SwaggerClient::Query.new # Query | 


begin
  result = api_instance.get_inbox_messages(query)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MessagesApi->get_inbox_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**Query**](Query.md)|  | 

### Return type

[**MessagesResponse**](MessagesResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_message_by_id**
> MessageResponse get_message_by_id(messageid)



Retrieve a logged message by the message ID

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

api_instance = SwaggerClient::MessagesApi.new

messageid = "messageid_example" # String | The ID of the message you would like returned


begin
  result = api_instance.get_message_by_id(messageid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MessagesApi->get_message_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageid** | **String**| The ID of the message you would like returned | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_messages**
> MessagesResponse get_messages(query)



Get messages matching your search criteria

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

api_instance = SwaggerClient::MessagesApi.new

query = SwaggerClient::Query.new # Query | 


begin
  result = api_instance.get_messages(query)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MessagesApi->get_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**Query**](Query.md)|  | 

### Return type

[**MessagesResponse**](MessagesResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **schedule_message**
> ScheduledMessageResponse schedule_message(sms_message)



Schedules an SMS message to be sent at the date-time you specify

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

api_instance = SwaggerClient::MessagesApi.new

sms_message = SwaggerClient::Message.new # Message | Message properties


begin
  result = api_instance.schedule_message(sms_message)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MessagesApi->schedule_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_message** | [**Message**](Message.md)| Message properties | 

### Return type

[**ScheduledMessageResponse**](ScheduledMessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **send_message**
> SendMessageResponse send_message(sms_message)



Sends an SMS message

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

api_instance = SwaggerClient::MessagesApi.new

sms_message = SwaggerClient::Message.new # Message | Message properties


begin
  result = api_instance.send_message(sms_message)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MessagesApi->send_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_message** | [**Message**](Message.md)| Message properties | 

### Return type

[**SendMessageResponse**](SendMessageResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



