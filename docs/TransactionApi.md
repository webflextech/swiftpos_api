# SwiftApi::TransactionApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transaction_get**](TransactionApi.md#transaction_get) | **GET** /api/Member/{id}/Transaction | Gets all transactions for a specified member.
[**transaction_get_0**](TransactionApi.md#transaction_get_0) | **GET** /api/Transaction/{id} | Gets all transactions for a specified member.


# **transaction_get**
> Array&lt;Transaction&gt; transaction_get(id, api_key, opts)

Gets all transactions for a specified member.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::TransactionApi.new

id = "id_example" # String | The id of the member.

api_key = "api_key_example" # String | 

opts = { 
  member_type: 56, # Integer | The type of member search to perform (0 = Standard, 3 = Alternate, 5 = EGM).
  from: "from_example", # String | The from date for member transactions in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss.
  to: "to_example" # String | The to date for member transactions in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss.
}

begin
  #Gets all transactions for a specified member.
  result = api_instance.transaction_get(id, api_key, opts)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling TransactionApi->transaction_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the member. | 
 **api_key** | **String**|  | 
 **member_type** | **Integer**| The type of member search to perform (0 &#x3D; Standard, 3 &#x3D; Alternate, 5 &#x3D; EGM). | [optional] 
 **from** | **String**| The from date for member transactions in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss. | [optional] 
 **to** | **String**| The to date for member transactions in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss. | [optional] 

### Return type

[**Array&lt;Transaction&gt;**](Transaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **transaction_get_0**
> Array&lt;Transaction&gt; transaction_get_0(id, api_key, opts)

Gets all transactions for a specified member.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::TransactionApi.new

id = "id_example" # String | The id of the member.

api_key = "api_key_example" # String | 

opts = { 
  member_type: 56, # Integer | The type of member search to perform (0 = Standard, 3 = Alternate, 5 = EGM).
  from: "from_example", # String | The from date for member transactions in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss.
  to: "to_example" # String | The to date for member transactions in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss.
}

begin
  #Gets all transactions for a specified member.
  result = api_instance.transaction_get_0(id, api_key, opts)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling TransactionApi->transaction_get_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the member. | 
 **api_key** | **String**|  | 
 **member_type** | **Integer**| The type of member search to perform (0 &#x3D; Standard, 3 &#x3D; Alternate, 5 &#x3D; EGM). | [optional] 
 **from** | **String**| The from date for member transactions in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss. | [optional] 
 **to** | **String**| The to date for member transactions in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss. | [optional] 

### Return type

[**Array&lt;Transaction&gt;**](Transaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



