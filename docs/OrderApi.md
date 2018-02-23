# SwiftApi::OrderApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**order_post**](OrderApi.md#order_post) | **POST** /api/Order | Creates a web order.


# **order_post**
> Object order_post(order, api_key)

Creates a web order.

Creates a web order which is sent to SwiftPOS Touch.  When creating a web order, the Id property should be set to reflect your own unique order number.  Orders can be created that have been partially or fully pre-paid or that require full payment at the POS.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::OrderApi.new

order = SwiftApi::WebOrder.new # WebOrder | The order to create.

api_key = "api_key_example" # String | 


begin
  #Creates a web order.
  result = api_instance.order_post(order, api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling OrderApi->order_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | [**WebOrder**](WebOrder.md)| The order to create. | 
 **api_key** | **String**|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



