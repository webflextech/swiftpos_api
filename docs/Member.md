# SwiftApi::Member

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Member Id | Int32 | Update Denied.  Optional when creating a new member. | 
**alternate_id** | **String** | Alternate Id | String(64) | Update Allowed. | 
**type** | **Integer** | Member Type | Int32(0 &#x3D; Member, 3 &#x3D; Alternate, 5 &#x3D; EGM) | Update Denied. | 
**first_name** | **String** | First Name | String(30) | Update Allowed. | 
**surname** | **String** | Surname | String(30) | Update Allowed. | 
**date_of_brith** | **String** | This property was made obsolete on 01/02/18.  Use the DateOfBirth property instead. | 
**date_of_birth** | **DateTime** | Date of Birth | DateTime | Update Allowed. | 
**shipping_address** | [**Address**](Address.md) | Shipping Address | Complex Object | Update Allowed. | 
**mailing_address** | [**Address**](Address.md) | Mailing Address | Complex Object | Update Allowed. | 
**home_phone** | **String** | Home Phone | String(20) | Update Allowed. | 
**mobile_phone** | **String** | Mobile Phone | String(20) | Update Allowed. | 
**email_address** | **String** | Email Address | String(50) | Update Allowed. | 
**mailing_address_active** | **BOOLEAN** | Mailing Address Active Flag | Boolean | Update Allowed. | 
**accounts** | [**Array&lt;Account&gt;**](Account.md) | Accounts | Complex Object | Partial Update Allowed. | 
**classifications** | [**Array&lt;Classification&gt;**](Classification.md) | Classifications | Complex Object | Update Allowed. | 
**member_photo** | **String** | Member Photo | Byte[] | Update Denied. | 
**gender** | **Integer** | Gender | Int32 | Update Allowed.  0 &#x3D; Male, 1 &#x3D; Female. | 
**receive_email** | **BOOLEAN** | Receive Promotional Email Flag | Boolean | Update Allowed. | 
**receive_sms** | **BOOLEAN** | Receieve Promotional SMS Flag | Boolean | Update Allowed. | 
**password** | **String** | Member Password | String | Update Denied.  Can be set when creating a new member.  Value is never returned when getting a member. | 


