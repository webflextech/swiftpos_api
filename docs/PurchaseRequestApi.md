# SwiftApi::PurchaseRequestApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**purchase_request_post**](PurchaseRequestApi.md#purchase_request_post) | **POST** /api/PurchaseRequest | Creates a purchase request in SwiftPOS back office.


# **purchase_request_post**
> Object purchase_request_post(purchase_request, api_key)

Creates a purchase request in SwiftPOS back office.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::PurchaseRequestApi.new

purchase_request = SwiftApi::PurchaseRequest.new # PurchaseRequest | The purchase request to create.

api_key = "api_key_example" # String | 


begin
  #Creates a purchase request in SwiftPOS back office.
  result = api_instance.purchase_request_post(purchase_request, api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling PurchaseRequestApi->purchase_request_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_request** | [**PurchaseRequest**](PurchaseRequest.md)| The purchase request to create. | 
 **api_key** | **String**|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



