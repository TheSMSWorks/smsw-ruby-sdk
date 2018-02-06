# SwaggerClient::AuthApi

All URIs are relative to *https://api.thesmsworks.co.uk/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**key_secret**](AuthApi.md#key_secret) | **GET** /auth/getApiKey | 
[**login**](AuthApi.md#login) | **POST** /auth/token | 


# **key_secret**
> ApiKeyResponse key_secret(customerid)



Generates an API Key/Secret pair

### Example
```ruby
# load the gem
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerid** | **String**| The Customer ID | 

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **login**
> TokenResponse login(credentials)



Generates a Json Web Token

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AuthApi.new

credentials = SwaggerClient::Login.new # Login | API Key & Secret


begin
  result = api_instance.login(credentials)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthApi->login: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**Login**](Login.md)| API Key &amp; Secret | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



