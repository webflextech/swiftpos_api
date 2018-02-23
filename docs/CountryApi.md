# SwiftApi::CountryApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**country_get**](CountryApi.md#country_get) | **GET** /api/Country | Gets all countries.


# **country_get**
> Array&lt;Country&gt; country_get(api_key)

Gets all countries.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::CountryApi.new

api_key = "api_key_example" # String | 


begin
  #Gets all countries.
  result = api_instance.country_get(api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling CountryApi->country_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 

### Return type

[**Array&lt;Country&gt;**](Country.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



