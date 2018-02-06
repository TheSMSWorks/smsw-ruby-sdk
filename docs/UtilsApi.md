# SwaggerClient::UtilsApi

All URIs are relative to *https://api.thesmsworks.co.uk/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**hello**](UtilsApi.md#hello) | **GET** /utils/hello | 


# **hello**
> HelloWorldResponse hello(opts)



Returns 'Hello' to the caller

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UtilsApi.new

opts = { 
  name: "name_example" # String | The name of the person to whom to say hello
}

begin
  result = api_instance.hello(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilsApi->hello: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the person to whom to say hello | [optional] 

### Return type

[**HelloWorldResponse**](HelloWorldResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



