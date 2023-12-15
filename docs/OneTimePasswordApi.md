# OpenapiClient::OneTimePasswordApi

All URIs are relative to *https://api.thesmsworks.co.uk/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**otp_messageid_get**](OneTimePasswordApi.md#otp_messageid_get) | **GET** /otp/{messageid} |  |
| [**otp_send_post**](OneTimePasswordApi.md#otp_send_post) | **POST** /otp/send |  |
| [**otp_verify_post**](OneTimePasswordApi.md#otp_verify_post) | **POST** /otp/verify |  |


## otp_messageid_get

> <OTPVerifyResponse> otp_messageid_get(messageid)



Retrieve an OTP by it's message ID

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

api_instance = OpenapiClient::OneTimePasswordApi.new
messageid = 'messageid_example' # String | The ID of the OTP you would like returned

begin
  
  result = api_instance.otp_messageid_get(messageid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OneTimePasswordApi->otp_messageid_get: #{e}"
end
```

#### Using the otp_messageid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OTPVerifyResponse>, Integer, Hash)> otp_messageid_get_with_http_info(messageid)

```ruby
begin
  
  data, status_code, headers = api_instance.otp_messageid_get_with_http_info(messageid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OTPVerifyResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OneTimePasswordApi->otp_messageid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messageid** | **String** | The ID of the OTP you would like returned |  |

### Return type

[**OTPVerifyResponse**](OTPVerifyResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8


## otp_send_post

> <OTPResponse> otp_send_post(otp)



Generates and sends a One-Time Password

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

api_instance = OpenapiClient::OneTimePasswordApi.new
otp = OpenapiClient::OTP.new # OTP | OTP properties

begin
  
  result = api_instance.otp_send_post(otp)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OneTimePasswordApi->otp_send_post: #{e}"
end
```

#### Using the otp_send_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OTPResponse>, Integer, Hash)> otp_send_post_with_http_info(otp)

```ruby
begin
  
  data, status_code, headers = api_instance.otp_send_post_with_http_info(otp)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OTPResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OneTimePasswordApi->otp_send_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **otp** | [**OTP**](OTP.md) | OTP properties |  |

### Return type

[**OTPResponse**](OTPResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8


## otp_verify_post

> <OTPVerifyResponse> otp_verify_post(passcode)



Generates and sends a One-Time Password

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

api_instance = OpenapiClient::OneTimePasswordApi.new
passcode = OpenapiClient::OTPVerify.new # OTPVerify | One-Time Password

begin
  
  result = api_instance.otp_verify_post(passcode)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OneTimePasswordApi->otp_verify_post: #{e}"
end
```

#### Using the otp_verify_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OTPVerifyResponse>, Integer, Hash)> otp_verify_post_with_http_info(passcode)

```ruby
begin
  
  data, status_code, headers = api_instance.otp_verify_post_with_http_info(passcode)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OTPVerifyResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OneTimePasswordApi->otp_verify_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **passcode** | [**OTPVerify**](OTPVerify.md) | One-Time Password |  |

### Return type

[**OTPVerifyResponse**](OTPVerifyResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8

