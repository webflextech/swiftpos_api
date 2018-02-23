# SwiftApi::LocationApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**location_get**](LocationApi.md#location_get) | **GET** /api/Location | Gets all locations.
[**location_get_0**](LocationApi.md#location_get_0) | **GET** /api/Location/{id} | Gets a location by id.


# **location_get**
> Array&lt;Location&gt; location_get(api_key)

Gets all locations.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::LocationApi.new

api_key = "api_key_example" # String | 


begin
  #Gets all locations.
  result = api_instance.location_get(api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling LocationApi->location_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 

### Return type

[**Array&lt;Location&gt;**](Location.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **location_get_0**
> Location location_get_0(id, api_key)

Gets a location by id.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::LocationApi.new

id = 56 # Integer | The id of the location.

api_key = "api_key_example" # String | 


begin
  #Gets a location by id.
  result = api_instance.location_get_0(id, api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling LocationApi->location_get_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the location. | 
 **api_key** | **String**|  | 

### Return type

[**Location**](Location.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



