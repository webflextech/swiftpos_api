# SwiftApi::SettingsApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**settings_get**](SettingsApi.md#settings_get) | **GET** /api/Settings | Gets all app settings.


# **settings_get**
> SettingsCollection settings_get(api_key)

Gets all app settings.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::SettingsApi.new

api_key = "api_key_example" # String | 


begin
  #Gets all app settings.
  result = api_instance.settings_get(api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling SettingsApi->settings_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 

### Return type

[**SettingsCollection**](SettingsCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



