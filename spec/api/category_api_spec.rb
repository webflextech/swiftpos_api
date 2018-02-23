=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for SwiftApi::CategoryApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CategoryApi' do
  before do
    # run before each test
    @instance = SwiftApi::CategoryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CategoryApi' do
    it 'should create an instance of CategoryApi' do
      expect(@instance).to be_instance_of(SwiftApi::CategoryApi)
    end
  end

  # unit tests for category_get
  # Gets a product category by id.
  # 
  # @param id 
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @return [Category]
  describe 'category_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for category_get_0
  # Gets all product categories.
  # 
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @return [Array<Category>]
  describe 'category_get_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
