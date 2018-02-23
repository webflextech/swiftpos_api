# SwiftApi::FamilyApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**family_get**](FamilyApi.md#family_get) | **GET** /api/Family | Gets all product families.


# **family_get**
> Array&lt;Family&gt; family_get(api_key, opts)

Gets all product families.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::FamilyApi.new

api_key = "api_key_example" # String | 

opts = { 
  web_families_only: true # BOOLEAN | A value indicating whether only web families should be returned.
}

begin
  #Gets all product families.
  result = api_instance.family_get(api_key, opts)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling FamilyApi->family_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 
 **web_families_only** | **BOOLEAN**| A value indicating whether only web families should be returned. | [optional] 

### Return type

[**Array&lt;Family&gt;**](Family.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



