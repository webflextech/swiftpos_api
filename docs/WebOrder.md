# SwiftApi::WebOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Order Id | Int32 | Required. | 
**type** | **Integer** | Order Type | Int32(1 &#x3D; Delivery, 2 &#x3D; Pickup) | Required. | 
**order_date** | **DateTime** | Order Date | DateTime | Required.  The date/time that the order was placed. | 
**scheduled_order_date** | **DateTime** | Scheduled Order Date | DateTime | Required.  The date/time that the order is scheduled for.  Set to the same as OrderDate if the order does not need to be delayed. | 
**booking_name** | **String** | Booking Name | String(30). | 
**comments** | **String** | Order Comments | String(no limit). | 
**member** | [**WebOrderMember**](WebOrderMember.md) | Member | Complex Object | Required. | 
**items** | [**Array&lt;WebOrderItem&gt;**](WebOrderItem.md) | Order Items | Complex Object | Required. | 
**medias** | [**Array&lt;WebOrderMedia&gt;**](WebOrderMedia.md) | Payments | Complex Object. | 


