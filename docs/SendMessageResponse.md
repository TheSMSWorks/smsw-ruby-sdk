# OpenapiClient::SendMessageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messageid** | **String** |  |  |
| **status** | **String** |  |  |
| **credits** | **Float** | The number of remaining credits on your SMS Works account. Floating point number. |  |
| **credits_used** | **Float** | The number of credits used to send the message. Floating point number. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SendMessageResponse.new(
  messageid: 123456789,
  status: SENT,
  credits: 180,
  credits_used: 2
)
```

