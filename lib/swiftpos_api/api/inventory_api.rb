=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module SwiftApi
  class InventoryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets all inventoried products from the back office which are accessible by the currently authenticated clerk.
    # 
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def inventory_items(api_key, opts = {})
      inventory_items_with_http_info(api_key, opts)
      return nil
    end

    # Gets all inventoried products from the back office which are accessible by the currently authenticated clerk.
    # 
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def inventory_items_with_http_info(api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InventoryApi.inventory_items ..."
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling InventoryApi.inventory_items"
      end
      # resource path
      local_var_path = "/api/Inventory"

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryApi#inventory_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
