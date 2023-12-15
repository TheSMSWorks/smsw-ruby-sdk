# OpenapiClient::UtilsApi

All URIs are relative to *https://api.thesmsworks.co.uk/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**utils_errors_errorcode_get**](UtilsApi.md#utils_errors_errorcode_get) | **GET** /utils/errors/{errorcode} |  |
| [**utils_test_get**](UtilsApi.md#utils_test_get) | **GET** /utils/test |  |


## utils_errors_errorcode_get

> <ExtendedErrorModel> utils_errors_errorcode_get(errorcode)



Returns a sample error object for the given error code. Useful for designing code to react to errors when they occur for real.

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

api_instance = OpenapiClient::UtilsApi.new
errorcode = 'errorcode_example' # String | The code of the error you would like returned

begin
  
  result = api_instance.utils_errors_errorcode_get(errorcode)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UtilsApi->utils_errors_errorcode_get: #{e}"
end
```

#### Using the utils_errors_errorcode_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtendedErrorModel>, Integer, Hash)> utils_errors_errorcode_get_with_http_info(errorcode)

```ruby
begin
  
  data, status_code, headers = api_instance.utils_errors_errorcode_get_with_http_info(errorcode)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtendedErrorModel>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UtilsApi->utils_errors_errorcode_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errorcode** | **String** | The code of the error you would like returned |  |

### Return type

[**ExtendedErrorModel**](ExtendedErrorModel.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8


## utils_test_get

> <TestResponse> utils_test_get



Returns the customer ID to the caller

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

api_instance = OpenapiClient::UtilsApi.new

begin
  
  result = api_instance.utils_test_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UtilsApi->utils_test_get: #{e}"
end
```

#### Using the utils_test_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TestResponse>, Integer, Hash)> utils_test_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.utils_test_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TestResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UtilsApi->utils_test_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TestResponse**](TestResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8

