=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for SwiftApi::LicenseApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LicenseApi' do
  before do
    # run before each test
    @instance = SwiftApi::LicenseApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LicenseApi' do
    it 'should create an instance of LicenseApi' do
      expect(@instance).to be_instance_of(SwiftApi::LicenseApi)
    end
  end

  # unit tests for license_put
  # Registers a specific device for use with a specific app.
  # 
  # @param device_license The device license.
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'license_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
