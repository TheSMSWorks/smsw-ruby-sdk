# OpenapiClient::Message

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | **String** | The sender of the message. Should be no longer than 11 characters for alphanumeric or 15 characters for numeric sender ID&#39;s. No spaces or special characters. |  |
| **destination** | **String** | Telephone number of the recipient |  |
| **content** | **String** | Message to send to the recipient. Content can be up to 1280 characters in length. Messages of 160 characters or fewer are charged 1 credit. If your message is longer than 160 characters then it will be broken down in to chunks of 153 characters before being sent to the recipient&#39;s handset, and you will be charged 1 credit for each 153 characters. Messages sent to numbers registered outside the UK will be typically charged double credits, but for certain countries may be charged fractions of credits (e.g. 2.5). Please contact us for rates for each country. |  |
| **deliveryreporturl** | **String** | The url to which we should POST delivery reports to for this message. If none is specified, we&#39;ll use the global delivery report URL that you&#39;ve configured on your account page. | [optional] |
| **schedule** | **String** | Date at which to send the message. This is only used by the message/schedule service and can be left empty for other services. | [optional] |
| **tag** | **String** | An identifying label for the message, which you can use to filter and report on messages you&#39;ve sent later. Ideal for campaigns. A maximum of 280 characters. | [optional] |
| **ttl** | **Float** | The optional number of minutes before the delivery report is deleted. Optional. Omit to prevent delivery report deletion. Integer. | [optional] |
| **responseemail** | **Array&lt;String&gt;** | An optional list of email addresses to forward responses to this specific message to. An SMS Works Reply Number is required to use this feature. | [optional] |
| **metadata** | [**MessageMetadata**](MessageMetadata.md) |  | [optional] |
| **validity** | **Float** | The optional number of minutes to attempt delivery before the message is marked as EXPIRED. Optional. The default is 2880 minutes. Integer. | [optional] |
| **ai** | **Boolean** | Used to determine whether The SMS Works AI Optimiser should be used in the event that the message is just longer than the 1 or 2 credit boundary. This setting overrides the AI Optimiser configuration on your SMS Works account. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Message.new(
  sender: YourCompany,
  destination: 447777777777,
  content: Your super awesome message,
  deliveryreporturl: http://your.domain.com/delivery/report/path,
  schedule: Sun Sep 03 2020 15:34:23 GMT+0100 (BST),
  tag: SummerSpecial,
  ttl: 10,
  responseemail: [&quot;my.email@mycompany.co.uk&quot;,&quot;my.other.email@mycompany.co.uk&quot;],
  metadata: null,
  validity: 1440,
  ai: null
)
```

