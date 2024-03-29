=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for SwiftApi::SaleApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SaleApi' do
  before do
    # run before each test
    @instance = SwiftApi::SaleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SaleApi' do
    it 'should create an instance of SaleApi' do
      expect(@instance).to be_instance_of(SwiftApi::SaleApi)
    end
  end

  # unit tests for sale_finalise_sale
  # Finalises a sale.
  # Processes a sale which is sent directly to SwiftPOS Back Office.  Processing a sale in this way is capabale of accepting and issuing vouchers.  The request model requires different properties to be set depending on whether the Process or Finalise process is being run.  If a member is passed in with the sale object that doesn’t exist or has a MemberId of 0 then a new member will be created.  In such a scenario, you should be providing at a bare minimum first and last names and a classification (which only requires ClassificationId to be populated with anything other than default values).
  # @param sale The sale to finalise.
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'sale_finalise_sale test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sale_get
  # Gets all SwiftPOS sales matching the specified search criteria.
  # The saleId parameter allows users of the api to exclude sales that have been previously retrieved.  Providing a value for the saleId parameter will result in the api returning sales with an id greater than the provided value.  This means that users can periodically call the api to retrieve only those sales that have occurred since the last call to the api.  The id parameter works with the maxRecords parameter, which limits the maximum number of sales that can be returned in a response.  A maxRecords value greater than 0 results in the response being limited to the provided maximum number of sales.  &lt;br /&gt;&lt;br /&gt;&lt;b&gt;Transaction Types: &lt;/b&gt;&lt;br /&gt;  Transaction Type 0 is the most common Transaction Type, which indicates a standard sale.  Other Transaction Types, most notably &lt;b&gt;0-98 and 150-500 (excluding types listed below)&lt;/b&gt; also indicate a standard sale.  &lt;br /&gt;&lt;br /&gt;  00099 No Sale &lt;br /&gt;  00100 Cancelled Sale &lt;br /&gt;  00101 Door Access &lt;br /&gt;  00102 Clerk Log On &lt;br /&gt;  00103 Clerk Log Off &lt;br /&gt;  00112 Clock On &lt;br /&gt;  00113 Clock Off &lt;br /&gt;  00114 Start Break &lt;br /&gt;  00115 End Break &lt;br /&gt;  00525 Stocktake &lt;br /&gt;  00526 Transfer/s Out &lt;br /&gt;  00527 Transfer/s In &lt;br /&gt;  00990 Cash Drop &lt;br /&gt;  00999 Paid Out &lt;br /&gt;  05005 Stk-Shrinkage &lt;br /&gt;  05010 Purchases &lt;br /&gt;  05011 Purchase Credits &lt;br /&gt;  08001 Stk-Receipts &lt;br /&gt;  08002 Stk-Adjustments &lt;br /&gt;  08003 Stk-Damaged &lt;br /&gt;  08004 Stk-Returns &lt;br /&gt;  08005 Stk-Wastage &lt;br /&gt;  23456 Cash Up &lt;br /&gt;  29700 Points Balance &lt;br /&gt;  29800 Stock Promo Draw &lt;br /&gt;  29805 Attendance Draw &lt;br /&gt;  29810 Member Draw &lt;br /&gt;
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :sale_id The last sale id received in a previous response.
  # @option opts [Integer] :max_records The maximum number of sales to return.
  # @option opts [String] :from The from date for sales in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss.
  # @option opts [String] :to The to date for sales in the format yyyy-MM-dd or yyyy-MM-dd HH:mm:ss.
  # @return [Array<SwiftPOSVenue>]
  describe 'sale_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sale_process_items
  # Processes sale items prior to finalising a sale.
  # Validates and prepares a sale for processing directly to SwiftPOS Back Office.  The request model requires different properties to be set depending on whether the Process or Finalise process is being run.  If a member is passed in with the sale object that doesn’t exist or has a MemberId of 0 then a new member will be created.  In such a scenario, you should be providing at a bare minimum first and last names and a classification (which only requires ClassificationId to be populated with anything other than default values).
  # @param sale The sale to process.
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @return [Sale]
  describe 'sale_process_items test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
