# SwiftApi::CategoryApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**category_get**](CategoryApi.md#category_get) | **GET** /api/Category/{id} | Gets a product category by id.
[**category_get_0**](CategoryApi.md#category_get_0) | **GET** /api/Category | Gets all product categories.


# **category_get**
> Category category_get(id, api_key)

Gets a product category by id.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::CategoryApi.new

id = 56 # Integer | 

api_key = "api_key_example" # String | 


begin
  #Gets a product category by id.
  result = api_instance.category_get(id, api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling CategoryApi->category_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **api_key** | **String**|  | 

### Return type

[**Category**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **category_get_0**
> Array&lt;Category&gt; category_get_0(api_key)

Gets all product categories.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::CategoryApi.new

api_key = "api_key_example" # String | 


begin
  #Gets all product categories.
  result = api_instance.category_get_0(api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling CategoryApi->category_get_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 

### Return type

[**Array&lt;Category&gt;**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



