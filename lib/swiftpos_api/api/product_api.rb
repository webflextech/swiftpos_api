=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module SwiftApi
  class ProductApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets all products matching the specified search value.
    # 
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :description The product description to search for.
    # @option opts [Integer] :category_id The category id to search for.
    # @option opts [Integer] :family_id The family id to search for.
    # @option opts [Integer] :group_id The group id to search for.
    # @option opts [BOOLEAN] :include_image A value indicating if the response should include product images.
    # @option opts [String] :member_id A member id used to effect the price of the returned product/s.
    # @option opts [Integer] :member_type The type of member search to perform (0 &#x3D; Standard, 3 &#x3D; Alternate, 5 &#x3D; EGM).
    # @option opts [Integer] :product_type The type of products to return (1 &#x3D; NoInstructions, 2 &#x3D; OnlyInstructions, 4 &#x3D; All).  This parameter has no effect when searching by category id.
    # @option opts [BOOLEAN] :web_products_only A value indicating if the response should only return products assigned to web families.
    # @return [Array<Product>]
    def product_get(api_key, opts = {})
      data, _status_code, _headers = product_get_with_http_info(api_key, opts)
      return data
    end

    # Gets all products matching the specified search value.
    # 
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :description The product description to search for.
    # @option opts [Integer] :category_id The category id to search for.
    # @option opts [Integer] :family_id The family id to search for.
    # @option opts [Integer] :group_id The group id to search for.
    # @option opts [BOOLEAN] :include_image A value indicating if the response should include product images.
    # @option opts [String] :member_id A member id used to effect the price of the returned product/s.
    # @option opts [Integer] :member_type The type of member search to perform (0 &#x3D; Standard, 3 &#x3D; Alternate, 5 &#x3D; EGM).
    # @option opts [Integer] :product_type The type of products to return (1 &#x3D; NoInstructions, 2 &#x3D; OnlyInstructions, 4 &#x3D; All).  This parameter has no effect when searching by category id.
    # @option opts [BOOLEAN] :web_products_only A value indicating if the response should only return products assigned to web families.
    # @return [Array<(Array<Product>, Fixnum, Hash)>] Array<Product> data, response status code and response headers
    def product_get_with_http_info(api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductApi.product_get ..."
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling ProductApi.product_get"
      end
      # resource path
      local_var_path = "/api/Product"

      # query parameters
      query_params = {}
      query_params[:'description'] = opts[:'description'] if !opts[:'description'].nil?
      query_params[:'categoryId'] = opts[:'category_id'] if !opts[:'category_id'].nil?
      query_params[:'familyId'] = opts[:'family_id'] if !opts[:'family_id'].nil?
      query_params[:'groupId'] = opts[:'group_id'] if !opts[:'group_id'].nil?
      query_params[:'includeImage'] = opts[:'include_image'] if !opts[:'include_image'].nil?
      query_params[:'memberId'] = opts[:'member_id'] if !opts[:'member_id'].nil?
      query_params[:'memberType'] = opts[:'member_type'] if !opts[:'member_type'].nil?
      query_params[:'productType'] = opts[:'product_type'] if !opts[:'product_type'].nil?
      query_params[:'webProductsOnly'] = opts[:'web_products_only'] if !opts[:'web_products_only'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      header_params[:'ApiKey'] = api_key

      # form parameters
      form_params = {}

      # proxy parameters
      proxy_params = opts[:'proxy'] if !opts[:'proxy'].nil?  
      proxyuserpwd_params = opts[:'proxyuserpwd'] if !opts[:'proxyuserpwd'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :proxy_params => proxy_params,
        :proxyuserpwd_params => proxyuserpwd_params,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Product>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#product_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a product with the specified id.
    # Search Types: plu (default), inventorycode, guid
    # @param id The id to lookup.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search_type The type of lookup to perform (&#39;plu&#39;, &#39;inventorycode&#39; or &#39;guid&#39;).
    # @option opts [BOOLEAN] :include_image A value indicating if the response should include the product image.
    # @option opts [String] :member_id A member id used to effect the price of the returned product/s.
    # @option opts [Integer] :member_type The type of member search to perform (0 &#x3D; Standard, 3 &#x3D; Alternate, 5 &#x3D; EGM).
    # @return [Product]
    def product_get_0(id, api_key, opts = {})
      data, _status_code, _headers = product_get_0_with_http_info(id, api_key, opts)
      return data
    end

    # Gets a product with the specified id.
    # Search Types: plu (default), inventorycode, guid
    # @param id The id to lookup.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search_type The type of lookup to perform (&#39;plu&#39;, &#39;inventorycode&#39; or &#39;guid&#39;).
    # @option opts [BOOLEAN] :include_image A value indicating if the response should include the product image.
    # @option opts [String] :member_id A member id used to effect the price of the returned product/s.
    # @option opts [Integer] :member_type The type of member search to perform (0 &#x3D; Standard, 3 &#x3D; Alternate, 5 &#x3D; EGM).
    # @return [Array<(Product, Fixnum, Hash)>] Product data, response status code and response headers
    def product_get_0_with_http_info(id, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductApi.product_get_0 ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductApi.product_get_0"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling ProductApi.product_get_0"
      end
      # resource path
      local_var_path = "/api/Product/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'searchType'] = opts[:'search_type'] if !opts[:'search_type'].nil?
      query_params[:'includeImage'] = opts[:'include_image'] if !opts[:'include_image'].nil?
      query_params[:'memberId'] = opts[:'member_id'] if !opts[:'member_id'].nil?
      query_params[:'memberType'] = opts[:'member_type'] if !opts[:'member_type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      header_params[:'ApiKey'] = api_key

      # form parameters
      form_params = {}

      # proxy parameters
      proxy_params = opts[:'proxy'] if !opts[:'proxy'].nil?  
      proxyuserpwd_params = opts[:'proxyuserpwd'] if !opts[:'proxyuserpwd'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :proxy_params => proxy_params,
        :proxyuserpwd_params => proxyuserpwd_params,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Product')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#product_get_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
