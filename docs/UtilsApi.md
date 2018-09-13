# SwaggerClient::UtilsApi

All URIs are relative to *https://api.thesmsworks.co.uk/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**test**](UtilsApi.md#test) | **GET** /utils/test | 


# **test**
> TestResponse test



Returns the customer ID to the caller

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UtilsApi.new

begin
  result = api_instance.test
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilsApi->test: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TestResponse**](TestResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



