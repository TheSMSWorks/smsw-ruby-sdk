# OpenapiClient::CreditsApi

All URIs are relative to *https://api.thesmsworks.co.uk/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**credits_balance_get**](CreditsApi.md#credits_balance_get) | **GET** /credits/balance |  |


## credits_balance_get

> <CreditsResponse> credits_balance_get



Returns the number of credits currently available on the account

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

api_instance = OpenapiClient::CreditsApi.new

begin
  
  result = api_instance.credits_balance_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditsApi->credits_balance_get: #{e}"
end
```

#### Using the credits_balance_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditsResponse>, Integer, Hash)> credits_balance_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.credits_balance_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditsResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditsApi->credits_balance_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreditsResponse**](CreditsResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8

