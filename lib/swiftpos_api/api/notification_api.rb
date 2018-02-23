=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module SwiftApi
  class NotificationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Assigns a device id to a member.
    # 
    # @param id The member id.
    # @param device_id The device id.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :member_type The type of member.
    # @return [nil]
    def notification_put_device(id, device_id, api_key, opts = {})
      notification_put_device_with_http_info(id, device_id, api_key, opts)
      return nil
    end

    # Assigns a device id to a member.
    # 
    # @param id The member id.
    # @param device_id The device id.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :member_type The type of member.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def notification_put_device_with_http_info(id, device_id, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotificationApi.notification_put_device ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotificationApi.notification_put_device"
      end
      # verify the required parameter 'device_id' is set
      if @api_client.config.client_side_validation && device_id.nil?
        fail ArgumentError, "Missing the required parameter 'device_id' when calling NotificationApi.notification_put_device"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling NotificationApi.notification_put_device"
      end
      # resource path
      local_var_path = "/api/Notification/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'deviceId'] = device_id
      query_params[:'memberType'] = opts[:'member_type'] if !opts[:'member_type'].nil?

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationApi#notification_put_device\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
