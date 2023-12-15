# OpenapiClient::MessageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batchid** | **String** |  | [optional] |
| **content** | **String** |  |  |
| **created** | **String** |  |  |
| **customerid** | **String** |  |  |
| **deliveryreporturl** | **String** |  | [optional] |
| **destination** | **Float** |  |  |
| **failurereason** | [**MessageResponseFailurereason**](MessageResponseFailurereason.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **identifier** | **String** |  | [optional] |
| **keyword** | **String** |  | [optional] |
| **messageid** | **String** |  |  |
| **modified** | **String** |  |  |
| **schedule** | **String** |  |  |
| **status** | **String** |  |  |
| **sender** | **String** |  |  |
| **tag** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MessageResponse.new(
  batchid: 2586749,
  content: My super awesome message,
  created: Wed Jul 19 2017 20:53:46 GMT+0100 (BST),
  customerid: 0fca8c3c-6cbc-11e7-8154-a6006ad3dba0,
  deliveryreporturl: https://your.domain.com/delivery/report/path,
  destination: 447777777777,
  failurereason: null,
  id: 123456789,
  identifier: 7777777777,
  keyword: CALRISSIAN,
  messageid: 123456789,
  modified: Wed Jul 19 2017 20:53:49 GMT+0100 (BST),
  schedule: Wed Jul 19 2017 20:53:45 GMT+0100 (BST),
  status: DELIVERED,
  sender: YourCompany,
  tag: campaign2
)
```

