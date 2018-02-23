# SwiftApi::LoginApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login_get**](LoginApi.md#login_get) | **GET** /api/Login/{id} | Validates a user login.


# **login_get**
> login_get(id, password, api_key, opts)

Validates a user login.

If the user is a member, then the member's id or email address may be used to login.  If the user is a clerk, only the clerk id may be used to login.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::LoginApi.new

id = "id_example" # String | The users's id.

password = "password_example" # String | The users's password.

api_key = "api_key_example" # String | 

opts = { 
  type: 56 # Integer | The type of login to validate (1 = Clerk, 2 = Member).
}

begin
  #Validates a user login.
  api_instance.login_get(id, password, api_key, opts)
rescue SwiftApi::ApiError => e
  puts "Exception when calling LoginApi->login_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The users&#39;s id. | 
 **password** | **String**| The users&#39;s password. | 
 **api_key** | **String**|  | 
 **type** | **Integer**| The type of login to validate (1 &#x3D; Clerk, 2 &#x3D; Member). | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



