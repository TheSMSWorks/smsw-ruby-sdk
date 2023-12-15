# OpenapiClient::OTPVerifyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination** | **String** | The mobile number that the OTP was sent to | [optional] |
| **status** | **String** | The status of the OTP. If the passcode is used within the validity period then this will be &#39;VERIFIED&#39;, otherwise it will be &#39;EXPIRED&#39; | [optional] |
| **passcode** | **Float** | The passcode used. | [optional] |
| **validity** | **Float** | The length of time in seconds for which the generated passcode is valid. | [optional] |
| **metadata** | **Object** | A JSON object storing data supplied when this passcode was generated, for use in your application. | [optional] |
| **created** | **String** | The ISO 8601 date/time at which this OTP was created | [optional] |
| **expires** | **String** | The ISO 8601 date/time at which this OTP expires | [optional] |
| **modified** | **String** | The ISO 8601 date/time at which this OTP was modified (typically when it was verified) | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OTPVerifyResponse.new(
  destination: 447777000000,
  status: VERIFIED,
  passcode: 123456,
  validity: 300,
  metadata: {&quot;customer_id&quot;:&quot;ABC123&quot;,&quot;cart_id&quot;:&quot;XYZ789&quot;},
  created: Tue Apr 25 2023 16:47:00 GMT+0100 (British Summer Time),
  expires: Tue Apr 25 2023 16:57:00 GMT+0100 (British Summer Time),
  modified: Tue Apr 25 2023 16:49:20 GMT+0100 (British Summer Time)
)
```

