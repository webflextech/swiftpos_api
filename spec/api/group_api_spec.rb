=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for SwiftApi::GroupApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GroupApi' do
  before do
    # run before each test
    @instance = SwiftApi::GroupApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupApi' do
    it 'should create an instance of GroupApi' do
      expect(@instance).to be_instance_of(SwiftApi::GroupApi)
    end
  end

  # unit tests for group_get
  # Gets a product group by id.
  # 
  # @param id 
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @return [Group]
  describe 'group_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for group_get_0
  # Gets all product groups.
  # 
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @return [Array<Group>]
  describe 'group_get_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
