# SwiftApi::VoucherApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**voucher_get**](VoucherApi.md#voucher_get) | **GET** /api/Member/{id}/Voucher | Gets all vouchers for a specified member.
[**voucher_post_voucher**](VoucherApi.md#voucher_post_voucher) | **POST** /api/Member/{id}/Voucher | Issues a voucher to the specified member.


# **voucher_get**
> Array&lt;Voucher&gt; voucher_get(id, api_key, opts)

Gets all vouchers for a specified member.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::VoucherApi.new

id = "id_example" # String | The id of the member.

api_key = "api_key_example" # String | 

opts = { 
  member_type: 56 # Integer | The type of member search to perform (0 = Standard, 3 = Alternate, 5 = EGM).
}

begin
  #Gets all vouchers for a specified member.
  result = api_instance.voucher_get(id, api_key, opts)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling VoucherApi->voucher_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the member. | 
 **api_key** | **String**|  | 
 **member_type** | **Integer**| The type of member search to perform (0 &#x3D; Standard, 3 &#x3D; Alternate, 5 &#x3D; EGM). | [optional] 

### Return type

[**Array&lt;Voucher&gt;**](Voucher.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **voucher_post_voucher**
> Object voucher_post_voucher(id, voucher_id, api_key, opts)

Issues a voucher to the specified member.

Issues a voucher to a member and supports providing a voucher mapping string for use in situations where a voucher barcode is not desired.  Please note that the barcode property is the custom voucher mapping string, which is optional.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::VoucherApi.new

id = "id_example" # String | The id of the member.

voucher_id = 56 # Integer | The id of the voucher.

api_key = "api_key_example" # String | 

opts = { 
  barcode: "barcode_example", # String | The barcode number to issue.
  member_type: 56 # Integer | The type of member.
}

begin
  #Issues a voucher to the specified member.
  result = api_instance.voucher_post_voucher(id, voucher_id, api_key, opts)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling VoucherApi->voucher_post_voucher: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the member. | 
 **voucher_id** | **Integer**| The id of the voucher. | 
 **api_key** | **String**|  | 
 **barcode** | **String**| The barcode number to issue. | [optional] 
 **member_type** | **Integer**| The type of member. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



