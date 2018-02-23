# SwiftApi::ProductApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**product_get**](ProductApi.md#product_get) | **GET** /api/Product | Gets all products matching the specified search value.
[**product_get_0**](ProductApi.md#product_get_0) | **GET** /api/Product/{id} | Gets a product with the specified id.


# **product_get**
> Array&lt;Product&gt; product_get(api_key, opts)

Gets all products matching the specified search value.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::ProductApi.new

api_key = "api_key_example" # String | 

opts = { 
  description: "description_example", # String | The product description to search for.
  category_id: 56, # Integer | The category id to search for.
  family_id: 56, # Integer | The family id to search for.
  group_id: 56, # Integer | The group id to search for.
  include_image: true, # BOOLEAN | A value indicating if the response should include product images.
  member_id: "member_id_example", # String | A member id used to effect the price of the returned product/s.
  member_type: 56, # Integer | The type of member search to perform (0 = Standard, 3 = Alternate, 5 = EGM).
  product_type: 56, # Integer | The type of products to return (1 = NoInstructions, 2 = OnlyInstructions, 4 = All).  This parameter has no effect when searching by category id.
  web_products_only: true # BOOLEAN | A value indicating if the response should only return products assigned to web families.
}

begin
  #Gets all products matching the specified search value.
  result = api_instance.product_get(api_key, opts)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling ProductApi->product_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 
 **description** | **String**| The product description to search for. | [optional] 
 **category_id** | **Integer**| The category id to search for. | [optional] 
 **family_id** | **Integer**| The family id to search for. | [optional] 
 **group_id** | **Integer**| The group id to search for. | [optional] 
 **include_image** | **BOOLEAN**| A value indicating if the response should include product images. | [optional] 
 **member_id** | **String**| A member id used to effect the price of the returned product/s. | [optional] 
 **member_type** | **Integer**| The type of member search to perform (0 &#x3D; Standard, 3 &#x3D; Alternate, 5 &#x3D; EGM). | [optional] 
 **product_type** | **Integer**| The type of products to return (1 &#x3D; NoInstructions, 2 &#x3D; OnlyInstructions, 4 &#x3D; All).  This parameter has no effect when searching by category id. | [optional] 
 **web_products_only** | **BOOLEAN**| A value indicating if the response should only return products assigned to web families. | [optional] 

### Return type

[**Array&lt;Product&gt;**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **product_get_0**
> Product product_get_0(id, api_key, opts)

Gets a product with the specified id.

Search Types: plu (default), inventorycode, guid

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::ProductApi.new

id = "id_example" # String | The id to lookup.

api_key = "api_key_example" # String | 

opts = { 
  search_type: "search_type_example", # String | The type of lookup to perform ('plu', 'inventorycode' or 'guid').
  include_image: true, # BOOLEAN | A value indicating if the response should include the product image.
  member_id: "member_id_example", # String | A member id used to effect the price of the returned product/s.
  member_type: 56 # Integer | The type of member search to perform (0 = Standard, 3 = Alternate, 5 = EGM).
}

begin
  #Gets a product with the specified id.
  result = api_instance.product_get_0(id, api_key, opts)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling ProductApi->product_get_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id to lookup. | 
 **api_key** | **String**|  | 
 **search_type** | **String**| The type of lookup to perform (&#39;plu&#39;, &#39;inventorycode&#39; or &#39;guid&#39;). | [optional] 
 **include_image** | **BOOLEAN**| A value indicating if the response should include the product image. | [optional] 
 **member_id** | **String**| A member id used to effect the price of the returned product/s. | [optional] 
 **member_type** | **Integer**| The type of member search to perform (0 &#x3D; Standard, 3 &#x3D; Alternate, 5 &#x3D; EGM). | [optional] 

### Return type

[**Product**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



