# SwiftApi::NotificationApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notification_put_device**](NotificationApi.md#notification_put_device) | **PUT** /api/Notification/{id} | Assigns a device id to a member.


# **notification_put_device**
> notification_put_device(id, device_id, api_key, opts)

Assigns a device id to a member.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::NotificationApi.new

id = "id_example" # String | The member id.

device_id = "device_id_example" # String | The device id.

api_key = "api_key_example" # String | 

opts = { 
  member_type: 56 # Integer | The type of member.
}

begin
  #Assigns a device id to a member.
  api_instance.notification_put_device(id, device_id, api_key, opts)
rescue SwiftApi::ApiError => e
  puts "Exception when calling NotificationApi->notification_put_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The member id. | 
 **device_id** | **String**| The device id. | 
 **api_key** | **String**|  | 
 **member_type** | **Integer**| The type of member. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



