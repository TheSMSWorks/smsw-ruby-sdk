# OpenapiClient::MessageResponseFailurereason

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Float** | Numeric code that defines the error. Integer. | [optional] |
| **details** | **String** |  | [optional] |
| **permanent** | **Boolean** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MessageResponseFailurereason.new(
  code: 34,
  details: Handset error,
  permanent: false
)
```

