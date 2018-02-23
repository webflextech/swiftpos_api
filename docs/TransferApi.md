# SwiftApi::TransferApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transfer_post**](TransferApi.md#transfer_post) | **POST** /api/Transfer | Creates a transfer record in SwiftPOS back office.


# **transfer_post**
> Object transfer_post(transfer, api_key)

Creates a transfer record in SwiftPOS back office.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::TransferApi.new

transfer = SwiftApi::Transfer.new # Transfer | The transfer to create.

api_key = "api_key_example" # String | 


begin
  #Creates a transfer record in SwiftPOS back office.
  result = api_instance.transfer_post(transfer, api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling TransferApi->transfer_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transfer** | [**Transfer**](Transfer.md)| The transfer to create. | 
 **api_key** | **String**|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



