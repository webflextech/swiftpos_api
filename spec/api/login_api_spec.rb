=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for SwiftApi::LoginApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LoginApi' do
  before do
    # run before each test
    @instance = SwiftApi::LoginApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LoginApi' do
    it 'should create an instance of LoginApi' do
      expect(@instance).to be_instance_of(SwiftApi::LoginApi)
    end
  end

  # unit tests for login_get
  # Validates a user login.
  # If the user is a member, then the member&#39;s id or email address may be used to login.  If the user is a clerk, only the clerk id may be used to login.
  # @param id The users&#39;s id.
  # @param password The users&#39;s password.
  # @param api_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :type The type of login to validate (1 &#x3D; Clerk, 2 &#x3D; Member).
  # @return [nil]
  describe 'login_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
