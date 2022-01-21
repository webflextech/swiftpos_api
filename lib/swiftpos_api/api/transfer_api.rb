=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module SwiftApi
  class TransferApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Creates a transfer record in SwiftPOS back office.
    # 
    # @param transfer The transfer to create.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def transfer_post(transfer, api_key, opts = {})
      data, _status_code, _headers = transfer_post_with_http_info(transfer, api_key, opts)
      return data
    end

    # Creates a transfer record in SwiftPOS back office.
    # 
    # @param transfer The transfer to create.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def transfer_post_with_http_info(transfer, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransferApi.transfer_post ..."
      end
      # verify the required parameter 'transfer' is set
      if @api_client.config.client_side_validation && transfer.nil?
        fail ArgumentError, "Missing the required parameter 'transfer' when calling TransferApi.transfer_post"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling TransferApi.transfer_post"
      end
      # resource path
      local_var_path = "/api/Transfer"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded'])
      header_params[:'ApiKey'] = api_key

      # form parameters
      form_params = {}

      # proxy parameters
      proxy_params = opts[:'proxy'] if !opts[:'proxy'].nil?  
      proxyuserpwd_params = opts[:'proxyuserpwd'] if !opts[:'proxyuserpwd'].nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(transfer)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :proxy_params => proxy_params,
        :proxyuserpwd_params => proxyuserpwd_params,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferApi#transfer_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
