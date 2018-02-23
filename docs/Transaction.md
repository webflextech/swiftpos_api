# SwiftApi::Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Receipt Number | Int32. | 
**transaction_date** | **DateTime** | Transaction Date/Time | DateTime. | 
**location_id** | **Integer** | Location Id | Int16. | 
**location_name** | **String** | Location Name | String(30). | 
**transaction_total** | **Float** | Sale Total | Decimal. | 
**charge_total** | **Float** | Charge Total | Decimal. | 
**payment_total** | **Float** | Payment Total | Decimal. | 
**points_total** | **Float** | Points Total | Decimal. | 
**items** | [**Array&lt;TransactionItem&gt;**](TransactionItem.md) | Transaction Items | Object | 
**medias** | [**Array&lt;TransactionMedia&gt;**](TransactionMedia.md) | Transaction Medias | Object | 


