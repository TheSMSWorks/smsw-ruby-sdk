# OpenapiClient::OTPResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messageid** | **String** | The messageid of the SMS used to send the OTP. Save this in your application to use when verifying passcodes. | [optional] |
| **status** | **String** | The initial status of the OTP message. | [optional] |
| **credits** | **Float** | The credit balance on your account | [optional] |
| **credits_used** | **Float** | The number of credits used to send this message | [optional] |
| **messageparts** | **Float** | The number of message parts used to send this message | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OTPResponse.new(
  messageid: 52692416-ce9e-45ad-aa1e-14fcee8fa662,
  status: SENT,
  credits: 561,
  credits_used: 1,
  messageparts: 1
)
```

