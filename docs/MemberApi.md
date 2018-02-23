# SwiftApi::MemberApi

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**member_get**](MemberApi.md#member_get) | **GET** /api/Member/{id} | Gets a member by Id.
[**member_get_0**](MemberApi.md#member_get_0) | **GET** /api/Member | Gets a member by name or email address.
[**member_post**](MemberApi.md#member_post) | **POST** /api/Member | Creates a new member.
[**member_put**](MemberApi.md#member_put) | **PUT** /api/Member | Updates an existing member.
[**member_put_account**](MemberApi.md#member_put_account) | **PUT** /api/Member/{id}/Account | Tops up a member account.


# **member_get**
> Member member_get(id, api_key, opts)

Gets a member by Id.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::MemberApi.new

id = "id_example" # String | The id of the member.

api_key = "api_key_example" # String | 

opts = { 
  member_type: 56 # Integer | The type of member search to perform (0 = Standard, 3 = Alternate, 5 = EGM).
}

begin
  #Gets a member by Id.
  result = api_instance.member_get(id, api_key, opts)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling MemberApi->member_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the member. | 
 **api_key** | **String**|  | 
 **member_type** | **Integer**| The type of member search to perform (0 &#x3D; Standard, 3 &#x3D; Alternate, 5 &#x3D; EGM). | [optional] 

### Return type

[**Member**](Member.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **member_get_0**
> Member member_get_0(api_key, opts)

Gets a member by name or email address.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::MemberApi.new

api_key = "api_key_example" # String | 

opts = { 
  first_name: "first_name_example", # String | First name must be used with surname.
  surname: "surname_example", # String | Surname must be used with first name.
  email_address: "email_address_example" # String | Email address.
}

begin
  #Gets a member by name or email address.
  result = api_instance.member_get_0(api_key, opts)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling MemberApi->member_get_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 
 **first_name** | **String**| First name must be used with surname. | [optional] 
 **surname** | **String**| Surname must be used with first name. | [optional] 
 **email_address** | **String**| Email address. | [optional] 

### Return type

[**Member**](Member.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **member_post**
> member_post(member, api_key)

Creates a new member.

Creates a new member in SwiftPOS Back Office.  Please note that when creating a new member, you must provide a value for FirstName, Surname, EmailAddress and ClassificationId as a bare minimum.  The ClassificationId must be a valid classification in SwiftPOS that is either assigned to all venues or the venue that the LocationId from the request is assigned to.  Refer to the model below for the full list of fields that can be set when creating a new member.  It is also possible to either manually set the desired MemberId to assign to the new member or have one automatically generated.  By setting Id to 0 or not providing it at all, the next available number will be automatically assigned, otherwise the provided Id will attempt to be assigned to the new member.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::MemberApi.new

member = SwiftApi::Member.new # Member | The member to create.

api_key = "api_key_example" # String | 


begin
  #Creates a new member.
  api_instance.member_post(member, api_key)
rescue SwiftApi::ApiError => e
  puts "Exception when calling MemberApi->member_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member** | [**Member**](Member.md)| The member to create. | 
 **api_key** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **member_put**
> Member member_put(member, api_key)

Updates an existing member.

Updates the details of a SwiftPOS member.  It is possible to update the member’s classification but only if the member is already assigned to a classification with a ClassificationType of 1 (Back Office Primary).  The ClassificationId property can be changed to any other valid classification that exists in SwiftPOS.  The members account active from / active to dates can be updated, but only for the account with the AccountType of 1 (Back Office Cash Acccount).  Refer to the model below for the full list of which fields can be modified.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::MemberApi.new

member = SwiftApi::Member.new # Member | The member to update.

api_key = "api_key_example" # String | 


begin
  #Updates an existing member.
  result = api_instance.member_put(member, api_key)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling MemberApi->member_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member** | [**Member**](Member.md)| The member to update. | 
 **api_key** | **String**|  | 

### Return type

[**Member**](Member.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **member_put_account**
> member_put_account(id, amount, media_id, api_key, opts)

Tops up a member account.

Tops up a member’s cash account and creates an associated back office sale for auditing purposes.  If ePurseId is 0 then a back office cash account topup will be performed.  If ePurseId is between 1 and 5 then an ePurse cash account topup will be performed.

### Example
```ruby
# load the gem
require 'swiftpos_api'

api_instance = SwiftApi::MemberApi.new

id = "id_example" # String | The member id.

amount = 1.2 # Float | The amount to topup.

media_id = 56 # Integer | The media that the topup was paid with.

api_key = "api_key_example" # String | 

opts = { 
  member_type: 56, # Integer | The type of member.
  e_purse_id: 56 # Integer | The id of the ePurse account to topup.
}

begin
  #Tops up a member account.
  api_instance.member_put_account(id, amount, media_id, api_key, opts)
rescue SwiftApi::ApiError => e
  puts "Exception when calling MemberApi->member_put_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The member id. | 
 **amount** | **Float**| The amount to topup. | 
 **media_id** | **Integer**| The media that the topup was paid with. | 
 **api_key** | **String**|  | 
 **member_type** | **Integer**| The type of member. | [optional] 
 **e_purse_id** | **Integer**| The id of the ePurse account to topup. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



