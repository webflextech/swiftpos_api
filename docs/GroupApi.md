# SwiftApi::GroupApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**group_get**](GroupApi.md#group_get) | **GET** /api/Group/{id} | Gets a product group by id.
[**group_get_0**](GroupApi.md#group_get_0) | **GET** /api/Group | Gets all product groups.


# **group_get**
> Group group_get(id, api_key)

Gets a product group by id.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::GroupApi.new

id = 56 # Integer | 

api_key = "api_key_example" # String | 


begin
  #Gets a product group by id.
  result = api_instance.group_get(id, api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling GroupApi->group_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **api_key** | **String**|  | 

### Return type

[**Group**](Group.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **group_get_0**
> Array&lt;Group&gt; group_get_0(api_key)

Gets all product groups.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::GroupApi.new

api_key = "api_key_example" # String | 


begin
  #Gets all product groups.
  result = api_instance.group_get_0(api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling GroupApi->group_get_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 

### Return type

[**Array&lt;Group&gt;**](Group.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



