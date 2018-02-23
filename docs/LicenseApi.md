# SwiftApi::LicenseApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**license_put**](LicenseApi.md#license_put) | **PUT** /api/License | Registers a specific device for use with a specific app.


# **license_put**
> license_put(device_license, api_key)

Registers a specific device for use with a specific app.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::LicenseApi.new

device_license = SwiftApi::DeviceLicense.new # DeviceLicense | The device license.

api_key = "api_key_example" # String | 


begin
  #Registers a specific device for use with a specific app.
  api_instance.license_put(device_license, api_key)
rescue SwiftApi::ApiError => e
  puts "Exception when calling LicenseApi->license_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_license** | [**DeviceLicense**](DeviceLicense.md)| The device license. | 
 **api_key** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



