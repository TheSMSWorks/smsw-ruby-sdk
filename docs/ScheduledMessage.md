# OpenapiClient::ScheduledMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | **String** | The sender of the message. Should be no longer than 11 characters for alphanumeric or 15 characters for numeric sender ID&#39;s. No spaces or special characters. | [optional] |
| **content** | **String** | Message to be sent to the recipient | [optional] |
| **destination** | **String** | For single scheduled messages, the mobile number of the recipient | [optional] |
| **destinations** | **Array&lt;String&gt;** | For batch messages, the mobile numbers of each of the recipients | [optional] |
| **schedule** | **String** | Date-time at which to send the batch. This is only used by the batch/schedule service. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ScheduledMessage.new(
  sender: YourCompany,
  content: My super awesome scheduled message,
  destination: 447777777777,
  destinations: [&quot;447777777777&quot;,&quot;447777777778&quot;,&quot;447777777779&quot;],
  schedule: Wed Jul 19 2017 20:26:28 GMT+0100 (BST)
)
```

