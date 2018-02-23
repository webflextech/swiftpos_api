# SwiftApi::MediaApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**media_get**](MediaApi.md#media_get) | **GET** /api/Media | Gets all media types.


# **media_get**
> Array&lt;Media&gt; media_get(api_key)

Gets all media types.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::MediaApi.new

api_key = "api_key_example" # String | 


begin
  #Gets all media types.
  result = api_instance.media_get(api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling MediaApi->media_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 

### Return type

[**Array&lt;Media&gt;**](Media.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



