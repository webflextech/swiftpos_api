=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module SwiftApi
  class GroupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a product group by id.
    # 
    # @param id 
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Group]
    def group_get(id, api_key, opts = {})
      data, _status_code, _headers = group_get_with_http_info(id, api_key, opts)
      return data
    end

    # Gets a product group by id.
    # 
    # @param id 
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Group, Fixnum, Hash)>] Group data, response status code and response headers
    def group_get_with_http_info(id, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GroupApi.group_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GroupApi.group_get"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling GroupApi.group_get"
      end
      # resource path
      local_var_path = "/api/Group/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      header_params[:'ApiKey'] = api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Group')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#group_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets all product groups.
    # 
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<Group>]
    def group_get_0(api_key, opts = {})
      data, _status_code, _headers = group_get_0_with_http_info(api_key, opts)
      return data
    end

    # Gets all product groups.
    # 
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Group>, Fixnum, Hash)>] Array<Group> data, response status code and response headers
    def group_get_0_with_http_info(api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GroupApi.group_get_0 ..."
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling GroupApi.group_get_0"
      end
      # resource path
      local_var_path = "/api/Group"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      header_params[:'ApiKey'] = api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Group>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#group_get_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
