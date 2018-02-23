# SwiftApi::Product

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | PLU Number | Int32. | 
**inventory_code** | **String** | Product Code | String(13). | 
**product_guid** | **String** | Product Guid | Guid. | 
**description** | [**Description**](Description.md) | Description | Complex Object. | 
**category** | [**ProductCategory**](ProductCategory.md) | Product Category | Complex Object. | 
**group** | [**ProductGroup**](ProductGroup.md) | Inventory Group | Complex Object. | 
**barcodes** | **Array&lt;String&gt;** | Barcodes | String[](13). | 
**price** | **Float** | Product Price | Decimal. | 
**image** | **String** | Product Image | Byte[]. | 
**stock_level** | **Float** | Stock on Hand | Decimal. | 


