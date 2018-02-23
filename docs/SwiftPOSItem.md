# SwiftApi::SwiftPOSItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inventory_code** | **String** | Inventory Code | String. | 
**plu** | **Integer** | PLU Number | Int32. | 
**name** | **String** | Product Description | String. | 
**host_id** | **String** | Product Host Id | String. | 
**size** | [**SwiftPOSSize**](SwiftPOSSize.md) | Size | Complex Object. | 
**category** | [**SwiftPOSCategory**](SwiftPOSCategory.md) | Category | Complex Object. | 
**group** | [**SwiftPOSGroup**](SwiftPOSGroup.md) | Group | Complex Object. | 
**master_group** | [**SwiftPOSMasterGroup**](SwiftPOSMasterGroup.md) | Master Group | Complex Object. | 
**price_level** | [**SwiftPOSPriceLevel**](SwiftPOSPriceLevel.md) | Price Level | Complex Object. | 
**clerk** | [**SwiftPOSClerk**](SwiftPOSClerk.md) | Clerk | Complex Object. | 
**location** | [**SwiftPOSLocation**](SwiftPOSLocation.md) | Location | Complex Object. | 
**quantity** | **Float** | Quantity | Decimal. | 
**total_ex** | **Float** | Item Total Ex Tax | Decimal. | 
**total_inc** | **Float** | Item Total Inc Tax | Decimal. | 
**counter** | **Integer** | Line Counter | Int32. | 
**barcode** | **String** | Barcode | String. | 
**normal_price** | **Float** | Normal Price | Decimal. | 
**item_cost** | **Float** | Unit Cost | Decimal. | 
**tax** | **Float** | Item Tax Total | Decimal. | 
**tax_free** | **Float** | Tax Free Component | Decimal. | 
**is_discount** | **BOOLEAN** | Discount Item | Boolean. | 
**is_refund** | **BOOLEAN** | Refund Item | Boolean. | 
**is_void** | **BOOLEAN** | Void Item | Boolean. | 
**is_surcharge** | **BOOLEAN** | Surcharge Item | Boolean. | 
**is_promotion** | **BOOLEAN** | Item sold on promotion | Boolean. | 
**reason** | [**SwiftPOSReason**](SwiftPOSReason.md) | Reason for item price change, refund etc | Complex Object. | 


