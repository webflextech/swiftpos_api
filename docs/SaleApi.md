# SwiftApi::SaleApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sale_finalise_sale**](SaleApi.md#sale_finalise_sale) | **POST** /api/Sale/Finalise | Finalises a sale.
[**sale_get**](SaleApi.md#sale_get) | **GET** /api/Sale | Gets all SwiftPOS sales matching the specified search criteria.
[**sale_process_items**](SaleApi.md#sale_process_items) | **POST** /api/Sale/Process | Processes sale items prior to finalising a sale.


# **sale_finalise_sale**
> sale_finalise_sale(sale, api_key)

Finalises a sale.

Processes a sale which is sent directly to SwiftPOS Back Office.  Processing a sale in this way is capabale of accepting and issuing vouchers.  The request model requires different properties to be set depending on whether the Process or Finalise process is being run.  If a member is passed in with the sale object that doesn’t exist or has a MemberId of 0 then a new member will be created.  In such a scenario, you should be providing at a bare minimum first and last names and a classification (which only requires ClassificationId to be populated with anything other than default values).

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::SaleApi.new

sale = SwiftApi::Sale.new # Sale | The sale to finalise.

api_key = "api_key_example" # String | 


begin
  #Finalises a sale.
  api_instance.sale_finalise_sale(sale, api_key)
rescue SwiftApi::ApiError => e
  puts "Exception when calling SaleApi->sale_finalise_sale: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sale** | [**Sale**](Sale.md)| The sale to finalise. | 
 **api_key** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **sale_get**
> Array&lt;SwiftPOSVenue&gt; sale_get(api_key, opts)

Gets all SwiftPOS sales matching the specified search criteria.

The saleId parameter allows users of the api to exclude sales that have been previously retrieved.  Providing a value for the saleId parameter will result in the api returning sales with an id greater than the provided value.  This means that users can periodically call the api to retrieve only those sales that have occurred since the last call to the api.  The id parameter works with the maxRecords parameter, which limits the maximum number of sales that can be returned in a response.  A maxRecords value greater than 0 results in the response being limited to the provided maximum number of sales.  <br /><br /><b>Transaction Types: </b><br />  Transaction Type 0 is the most common Transaction Type, which indicates a standard sale.  Other Transaction Types, most notably <b>0-98 and 150-500 (excluding types listed below)</b> also indicate a standard sale.  <br /><br />  00099 No Sale <br />  00100 Cancelled Sale <br />  00101 Door Access <br />  00102 Clerk Log On <br />  00103 Clerk Log Off <br />  00112 Clock On <br />  00113 Clock Off <br />  00114 Start Break <br />  00115 End Break <br />  00525 Stocktake <br />  00526 Transfer/s Out <br />  00527 Transfer/s In <br />  00990 Cash Drop <br />  00999 Paid Out <br />  05005 Stk-Shrinkage <br />  05010 Purchases <br />  05011 Purchase Credits <br />  08001 Stk-Receipts <br />  08002 Stk-Adjustments <br />  08003 Stk-Damaged <br />  08004 Stk-Returns <br />  08005 Stk-Wastage <br />  23456 Cash Up <br />  29700 Points Balance <br />  29800 Stock Promo Draw <br />  29805 Attendance Draw <br />  29810 Member Draw <br />

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::SaleApi.new

api_key = "api_key_example" # String | 

opts = { 
  sale_id: 789, # Integer | The last sale id received in a previous response.
  max_records: 56, # Integer | The maximum number of sales to return.
  from: "from_example", # String | The from date for sales in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss.
  to: "to_example" # String | The to date for sales in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss.
}

begin
  #Gets all SwiftPOS sales matching the specified search criteria.
  result = api_instance.sale_get(api_key, opts)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling SaleApi->sale_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 
 **sale_id** | **Integer**| The last sale id received in a previous response. | [optional] 
 **max_records** | **Integer**| The maximum number of sales to return. | [optional] 
 **from** | **String**| The from date for sales in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss. | [optional] 
 **to** | **String**| The to date for sales in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss. | [optional] 

### Return type

[**Array&lt;SwiftPOSVenue&gt;**](SwiftPOSVenue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **sale_process_items**
> Sale sale_process_items(sale, api_key)

Processes sale items prior to finalising a sale.

Validates and prepares a sale for processing directly to SwiftPOS Back Office.  The request model requires different properties to be set depending on whether the Process or Finalise process is being run.  If a member is passed in with the sale object that doesn’t exist or has a MemberId of 0 then a new member will be created.  In such a scenario, you should be providing at a bare minimum first and last names and a classification (which only requires ClassificationId to be populated with anything other than default values).

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::SaleApi.new

sale = SwiftApi::Sale.new # Sale | The sale to process.

api_key = "api_key_example" # String | 


begin
  #Processes sale items prior to finalising a sale.
  result = api_instance.sale_process_items(sale, api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling SaleApi->sale_process_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sale** | [**Sale**](Sale.md)| The sale to process. | 
 **api_key** | **String**|  | 

### Return type

[**Sale**](Sale.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



