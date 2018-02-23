=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for SwiftApi::AuthorisationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthorisationApi' do
  before do
    # run before each test
    @instance = SwiftApi::AuthorisationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthorisationApi' do
    it 'should create an instance of AuthorisationApi' do
      expect(@instance).to be_instance_of(SwiftApi::AuthorisationApi)
    end
  end

  # unit tests for authorisation_get
  # Gets an api key.
  # Authenticates an API client by validating a SwiftPOS clerk Id and password in addition to a SwiftPOS location Id.  Successful authentication will result in an API key being returned in the response which needs to be provided for all further interaction with SwiftApi.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :location_id Location to request an api key for.
  # @option opts [Integer] :user_id Clerk Id.
  # @option opts [String] :password Clerk Password.
  # @return [AuthorisationResponse]
  describe 'authorisation_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
