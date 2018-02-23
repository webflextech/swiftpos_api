# SwiftApi::StocktakeApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stocktake_post**](StocktakeApi.md#stocktake_post) | **POST** /api/Stocktake | Creates a stocktake record in SwiftPOS back office.


# **stocktake_post**
> Object stocktake_post(stocktake, api_key)

Creates a stocktake record in SwiftPOS back office.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::StocktakeApi.new

stocktake = SwiftApi::Stocktake.new # Stocktake | The stocktake to create.

api_key = "api_key_example" # String | 


begin
  #Creates a stocktake record in SwiftPOS back office.
  result = api_instance.stocktake_post(stocktake, api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling StocktakeApi->stocktake_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stocktake** | [**Stocktake**](Stocktake.md)| The stocktake to create. | 
 **api_key** | **String**|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



