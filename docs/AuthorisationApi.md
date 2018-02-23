# SwiftApi::AuthorisationApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorisation_get**](AuthorisationApi.md#authorisation_get) | **GET** /api/Authorisation | Gets an api key.


# **authorisation_get**
> AuthorisationResponse authorisation_get(opts)

Gets an api key.

Authenticates an API client by validating a SwiftPOS clerk Id and password in addition to a SwiftPOS location Id.  Successful authentication will result in an API key being returned in the response which needs to be provided for all further interaction with SwiftApi.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::AuthorisationApi.new

opts = { 
  location_id: 56, # Integer | Location to request an api key for.
  user_id: 56, # Integer | Clerk Id.
  password: "password_example" # String | Clerk Password.
}

begin
  #Gets an api key.
  result = api_instance.authorisation_get(opts)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling AuthorisationApi->authorisation_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **Integer**| Location to request an api key for. | [optional] 
 **user_id** | **Integer**| Clerk Id. | [optional] 
 **password** | **String**| Clerk Password. | [optional] 

### Return type

[**AuthorisationResponse**](AuthorisationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



