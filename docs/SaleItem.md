# SwiftApi::SaleItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | PLU Number | Int32 | Required (ProcessItems, FinaliseSale). | 
**type** | **Integer** | Item Type | Int32(1 &#x3D; Product, 2 &#x3D; Discount, 4 &#x3D; MixNMatch, 8 &#x3D; Voucher) | Required (ProcessItems, FinaliseSale). | 
**description** | **String** | Description | String.  Only required when overriding standard product description. | 
**quantity** | **Float** | Item Quantity | Decimal | Required (ProcessItems, FinaliseSale). | 
**price** | **Float** | Item Price | Decimal | Required (ProcessItems, FinaliseSale). | 
**line_total** | **Float** | Line Total | Decimal | Pass supplied value from ProcessItems response to FinaliseSale. | 
**rule_id** | **Integer** | Mix n Math Rule Id | Int32 | Pass supplied value from ProcessItems response to FinaliseSale. | 
**voucher_id** | **Integer** | Voucher Id | Int32 | Pass supplied value from ProcessItems response to FinaliseSale. | 
**discount_id** | **Integer** | Discount Id | Int32 | Pass supplied value from ProcessItems response to FinaliseSale. | 
**discount_total** | **Float** | Total Discount Amount | Decimal | Pass supplied value from ProcessItems response to FinaliseSale. | 
**accrual_points** | **Float** | Points Accrued | Decimal | Pass supplied value from ProcessItems response to FinaliseSale. | 
**tax1** | **Float** | Tax Total 1 | Decimal | Pass supplied value from ProcessItems response to FinaliseSale. | 
**tax2** | **Float** | Tax Total 2 | Decimal | Pass supplied value from ProcessItems response to FinaliseSale. | 
**tax3** | **Float** | Tax Total 3 | Decimal | Pass supplied value from ProcessItems response to FinaliseSale. | 
**tax4** | **Float** | Tax Total 4 | Decimal | Pass supplied value from ProcessItems response to FinaliseSale. | 
**tax_free** | **Float** | Tax Free Amount | Decimal | Pass supplied value from ProcessItems response to FinaliseSale. | 
**category_id** | **Integer** | Category Id | Int32 | Required (ProcessItems, FinaliseSale). | 
**inventory_code** | **String** | Inventory Code | String(13) | Required (ProcessItems, FinaliseSale). | 


