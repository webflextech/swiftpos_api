# swiftpos_api

SwiftApi - the Ruby gem for the SwiftPOS API

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swiftpos_api.gemspec
```

Then either install the gem locally:

```shell
gem install ./swiftpos_api-1.0.0.gem
```
(for development, run `gem install --dev ./swiftpos_api-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swiftpos_api', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/webflextech/swiftpos_api, then add the following in the Gemfile:

    gem 'swiftpos_api', :git => 'https://github.com/webflextech/swiftpos_api.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swiftpos_api'

api_instance = SwiftApi::AuthorisationApi.new

opts = { 
  location_id: 56, # Integer | Location to request an api key for.
  user_id: 56, # Integer | Clerk Id.
  password: "password_example" # String | Clerk Password.
}

begin
  #Gets an api key.
  result = api_instance.authorisation_get(opts)
  p result
rescue SwiftApi::ApiError => e
  puts "Exception when calling AuthorisationApi->authorisation_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://webstores.swiftpos.com.au:4000/SwiftApi*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwiftApi::AuthorisationApi* | [**authorisation_get**](docs/AuthorisationApi.md#authorisation_get) | **GET** /api/Authorisation | Gets an api key.
*SwiftApi::CategoryApi* | [**category_get**](docs/CategoryApi.md#category_get) | **GET** /api/Category/{id} | Gets a product category by id.
*SwiftApi::CategoryApi* | [**category_get_0**](docs/CategoryApi.md#category_get_0) | **GET** /api/Category | Gets all product categories.
*SwiftApi::CountryApi* | [**country_get**](docs/CountryApi.md#country_get) | **GET** /api/Country | Gets all countries.
*SwiftApi::FamilyApi* | [**family_get**](docs/FamilyApi.md#family_get) | **GET** /api/Family | Gets all product families.
*SwiftApi::GroupApi* | [**group_get**](docs/GroupApi.md#group_get) | **GET** /api/Group/{id} | Gets a product group by id.
*SwiftApi::GroupApi* | [**group_get_0**](docs/GroupApi.md#group_get_0) | **GET** /api/Group | Gets all product groups.
*SwiftApi::InventoryApi* | [**inventory_items**](docs/InventoryApi.md#inventory_items) | **GET** /api/Inventory | Gets all inventoried products from the back office which are accessible by the currently authenticated clerk.
*SwiftApi::LicenseApi* | [**license_put**](docs/LicenseApi.md#license_put) | **PUT** /api/License | Registers a specific device for use with a specific app.
*SwiftApi::LocationApi* | [**location_get**](docs/LocationApi.md#location_get) | **GET** /api/Location | Gets all locations.
*SwiftApi::LocationApi* | [**location_get_0**](docs/LocationApi.md#location_get_0) | **GET** /api/Location/{id} | Gets a location by id.
*SwiftApi::LoginApi* | [**login_get**](docs/LoginApi.md#login_get) | **GET** /api/Login/{id} | Validates a user login.
*SwiftApi::MediaApi* | [**media_get**](docs/MediaApi.md#media_get) | **GET** /api/Media | Gets all media types.
*SwiftApi::MemberApi* | [**member_get**](docs/MemberApi.md#member_get) | **GET** /api/Member/{id} | Gets a member by Id.
*SwiftApi::MemberApi* | [**member_get_0**](docs/MemberApi.md#member_get_0) | **GET** /api/Member | Gets a member by name or email address.
*SwiftApi::MemberApi* | [**member_post**](docs/MemberApi.md#member_post) | **POST** /api/Member | Creates a new member.
*SwiftApi::MemberApi* | [**member_put**](docs/MemberApi.md#member_put) | **PUT** /api/Member | Updates an existing member.
*SwiftApi::MemberApi* | [**member_put_account**](docs/MemberApi.md#member_put_account) | **PUT** /api/Member/{id}/Account | Tops up a member account.
*SwiftApi::NotificationApi* | [**notification_put_device**](docs/NotificationApi.md#notification_put_device) | **PUT** /api/Notification/{id} | Assigns a device id to a member.
*SwiftApi::OrderApi* | [**order_post**](docs/OrderApi.md#order_post) | **POST** /api/Order | Creates a web order.
*SwiftApi::ProductApi* | [**product_get**](docs/ProductApi.md#product_get) | **GET** /api/Product | Gets all products matching the specified search value.
*SwiftApi::ProductApi* | [**product_get_0**](docs/ProductApi.md#product_get_0) | **GET** /api/Product/{id} | Gets a product with the specified id.
*SwiftApi::PurchaseRequestApi* | [**purchase_request_post**](docs/PurchaseRequestApi.md#purchase_request_post) | **POST** /api/PurchaseRequest | Creates a purchase request in SwiftPOS back office.
*SwiftApi::SaleApi* | [**sale_finalise_sale**](docs/SaleApi.md#sale_finalise_sale) | **POST** /api/Sale/Finalise | Finalises a sale.
*SwiftApi::SaleApi* | [**sale_get**](docs/SaleApi.md#sale_get) | **GET** /api/Sale | Gets all SwiftPOS sales matching the specified search criteria.
*SwiftApi::SaleApi* | [**sale_process_items**](docs/SaleApi.md#sale_process_items) | **POST** /api/Sale/Process | Processes sale items prior to finalising a sale.
*SwiftApi::SettingsApi* | [**settings_get**](docs/SettingsApi.md#settings_get) | **GET** /api/Settings | Gets all app settings.
*SwiftApi::StocktakeApi* | [**stocktake_post**](docs/StocktakeApi.md#stocktake_post) | **POST** /api/Stocktake | Creates a stocktake record in SwiftPOS back office.
*SwiftApi::TransactionApi* | [**transaction_get**](docs/TransactionApi.md#transaction_get) | **GET** /api/Member/{id}/Transaction | Gets all transactions for a specified member.
*SwiftApi::TransactionApi* | [**transaction_get_0**](docs/TransactionApi.md#transaction_get_0) | **GET** /api/Transaction/{id} | Gets all transactions for a specified member.
*SwiftApi::TransferApi* | [**transfer_post**](docs/TransferApi.md#transfer_post) | **POST** /api/Transfer | Creates a transfer record in SwiftPOS back office.
*SwiftApi::VoucherApi* | [**voucher_get**](docs/VoucherApi.md#voucher_get) | **GET** /api/Member/{id}/Voucher | Gets all vouchers for a specified member.
*SwiftApi::VoucherApi* | [**voucher_post_voucher**](docs/VoucherApi.md#voucher_post_voucher) | **POST** /api/Member/{id}/Voucher | Issues a voucher to the specified member.


## Documentation for Models

 - [SwiftApi::Account](docs/Account.md)
 - [SwiftApi::Address](docs/Address.md)
 - [SwiftApi::AuthorisationResponse](docs/AuthorisationResponse.md)
 - [SwiftApi::Category](docs/Category.md)
 - [SwiftApi::CategoryLink](docs/CategoryLink.md)
 - [SwiftApi::Classification](docs/Classification.md)
 - [SwiftApi::Country](docs/Country.md)
 - [SwiftApi::Description](docs/Description.md)
 - [SwiftApi::DeviceLicense](docs/DeviceLicense.md)
 - [SwiftApi::Error](docs/Error.md)
 - [SwiftApi::Family](docs/Family.md)
 - [SwiftApi::Group](docs/Group.md)
 - [SwiftApi::IssuedVoucher](docs/IssuedVoucher.md)
 - [SwiftApi::Location](docs/Location.md)
 - [SwiftApi::Media](docs/Media.md)
 - [SwiftApi::Member](docs/Member.md)
 - [SwiftApi::Product](docs/Product.md)
 - [SwiftApi::ProductCategory](docs/ProductCategory.md)
 - [SwiftApi::ProductGroup](docs/ProductGroup.md)
 - [SwiftApi::PurchaseRequest](docs/PurchaseRequest.md)
 - [SwiftApi::PurchaseRequestItem](docs/PurchaseRequestItem.md)
 - [SwiftApi::Sale](docs/Sale.md)
 - [SwiftApi::SaleItem](docs/SaleItem.md)
 - [SwiftApi::SaleMedia](docs/SaleMedia.md)
 - [SwiftApi::Setting](docs/Setting.md)
 - [SwiftApi::SettingsCollection](docs/SettingsCollection.md)
 - [SwiftApi::Stocktake](docs/Stocktake.md)
 - [SwiftApi::StocktakeItem](docs/StocktakeItem.md)
 - [SwiftApi::SuppliedVoucher](docs/SuppliedVoucher.md)
 - [SwiftApi::SwiftPOSBalance](docs/SwiftPOSBalance.md)
 - [SwiftApi::SwiftPOSCategory](docs/SwiftPOSCategory.md)
 - [SwiftApi::SwiftPOSClassification](docs/SwiftPOSClassification.md)
 - [SwiftApi::SwiftPOSClerk](docs/SwiftPOSClerk.md)
 - [SwiftApi::SwiftPOSCustomer](docs/SwiftPOSCustomer.md)
 - [SwiftApi::SwiftPOSGroup](docs/SwiftPOSGroup.md)
 - [SwiftApi::SwiftPOSItem](docs/SwiftPOSItem.md)
 - [SwiftApi::SwiftPOSLocation](docs/SwiftPOSLocation.md)
 - [SwiftApi::SwiftPOSMasterGroup](docs/SwiftPOSMasterGroup.md)
 - [SwiftApi::SwiftPOSMedia](docs/SwiftPOSMedia.md)
 - [SwiftApi::SwiftPOSPriceLevel](docs/SwiftPOSPriceLevel.md)
 - [SwiftApi::SwiftPOSReason](docs/SwiftPOSReason.md)
 - [SwiftApi::SwiftPOSSale](docs/SwiftPOSSale.md)
 - [SwiftApi::SwiftPOSSize](docs/SwiftPOSSize.md)
 - [SwiftApi::SwiftPOSTable](docs/SwiftPOSTable.md)
 - [SwiftApi::SwiftPOSTerminal](docs/SwiftPOSTerminal.md)
 - [SwiftApi::SwiftPOSVenue](docs/SwiftPOSVenue.md)
 - [SwiftApi::Transaction](docs/Transaction.md)
 - [SwiftApi::TransactionItem](docs/TransactionItem.md)
 - [SwiftApi::TransactionMedia](docs/TransactionMedia.md)
 - [SwiftApi::Transfer](docs/Transfer.md)
 - [SwiftApi::TransferItem](docs/TransferItem.md)
 - [SwiftApi::Voucher](docs/Voucher.md)
 - [SwiftApi::WebOrder](docs/WebOrder.md)
 - [SwiftApi::WebOrderItem](docs/WebOrderItem.md)
 - [SwiftApi::WebOrderMedia](docs/WebOrderMedia.md)
 - [SwiftApi::WebOrderMember](docs/WebOrderMember.md)


## Documentation for Authorization


### ApiKey

- **Type**: API key
- **API key parameter name**: ApiKey
- **Location**: HTTP header

