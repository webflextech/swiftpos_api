# SwiftApi::Sale

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Transaction Id | Int32 | Required (ProcessItems, FinaliseSale). | 
**sale_date** | **DateTime** | Transaction Date/Time | DateTime | Required (ProcessItems, FinaliseSale). | 
**member** | [**Member**](Member.md) | Member | Complex Object | Required (ProcessItems | FinaliseSale). | 
**items** | [**Array&lt;SaleItem&gt;**](SaleItem.md) | Items | Complex Object | Required (ProcessItems | FinaliseSale). | 
**media** | [**Array&lt;SaleMedia&gt;**](SaleMedia.md) | Payments | Complex Object | Required (ProcessItems | FinaliseSale). | 
**supplied_vouchers** | [**Array&lt;SuppliedVoucher&gt;**](SuppliedVoucher.md) | Vouchers to apply to the sale | Complex Object. | 
**issued_vouchers** | [**Array&lt;IssuedVoucher&gt;**](IssuedVoucher.md) | Vouchers issued as a result of the sale | Complex object. | 
**accrual_points** | **Float** | Points Accrued | Decimal. | 


