# SwiftApi::InventoryApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_items**](InventoryApi.md#inventory_items) | **GET** /api/Inventory | Gets all inventoried products from the back office which are accessible by the currently authenticated clerk.


# **inventory_items**
> inventory_items(api_key)

Gets all inventoried products from the back office which are accessible by the currently authenticated clerk.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::InventoryApi.new

api_key = "api_key_example" # String | 


begin
  #Gets all inventoried products from the back office which are accessible by the currently authenticated clerk.
  api_instance.inventory_items(api_key)
rescue SwiftApi::ApiError => e
  puts "Exception when calling InventoryApi->inventory_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



