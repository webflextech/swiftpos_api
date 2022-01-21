=begin
#SwiftPOS API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module SwiftApi
  class MemberApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a member by Id.
    # 
    # @param id The id of the member.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :member_type The type of member search to perform (0 &#x3D; Standard, 3 &#x3D; Alternate, 5 &#x3D; EGM).
    # @return [Member]
    def member_get(id, api_key, opts = {})
      data, _status_code, _headers = member_get_with_http_info(id, api_key, opts)
      return data
    end

    # Gets a member by Id.
    # 
    # @param id The id of the member.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :member_type The type of member search to perform (0 &#x3D; Standard, 3 &#x3D; Alternate, 5 &#x3D; EGM).
    # @return [Array<(Member, Fixnum, Hash)>] Member data, response status code and response headers
    def member_get_with_http_info(id, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MemberApi.member_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MemberApi.member_get"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling MemberApi.member_get"
      end
      # resource path
      local_var_path = "/api/Member/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'memberType'] = opts[:'member_type'] if !opts[:'member_type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      header_params[:'ApiKey'] = api_key
      header_params = header_params.merge(opts[:'headers']) if !opts[:'headers'].nil? 

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
        :return_type => 'Member')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberApi#member_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a member by name or email address.
    # 
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :first_name First name must be used with surname.
    # @option opts [String] :surname Surname must be used with first name.
    # @option opts [String] :email_address Email address.
    # @return [Member]
    def member_get_0(api_key, opts = {})
      data, _status_code, _headers = member_get_0_with_http_info(api_key, opts)
      return data
    end

    # Gets a member by name or email address.
    # 
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :first_name First name must be used with surname.
    # @option opts [String] :surname Surname must be used with first name.
    # @option opts [String] :email_address Email address.
    # @return [Array<(Member, Fixnum, Hash)>] Member data, response status code and response headers
    def member_get_0_with_http_info(api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MemberApi.member_get_0 ..."
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling MemberApi.member_get_0"
      end
      # resource path
      local_var_path = "/api/Member"

      # query parameters
      query_params = {}
      query_params[:'firstName'] = opts[:'first_name'] if !opts[:'first_name'].nil?
      query_params[:'surname'] = opts[:'surname'] if !opts[:'surname'].nil?
      query_params[:'emailAddress'] = opts[:'email_address'] if !opts[:'email_address'].nil?

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
        :return_type => 'Member')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberApi#member_get_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a new member.
    # Creates a new member in SwiftPOS Back Office.  Please note that when creating a new member, you must provide a value for FirstName, Surname, EmailAddress and ClassificationId as a bare minimum.  The ClassificationId must be a valid classification in SwiftPOS that is either assigned to all venues or the venue that the LocationId from the request is assigned to.  Refer to the model below for the full list of fields that can be set when creating a new member.  It is also possible to either manually set the desired MemberId to assign to the new member or have one automatically generated.  By setting Id to 0 or not providing it at all, the next available number will be automatically assigned, otherwise the provided Id will attempt to be assigned to the new member.
    # @param member The member to create.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def member_post(member, api_key, opts = {})
      member_post_with_http_info(member, api_key, opts)
      return nil
    end

    # Creates a new member.
    # Creates a new member in SwiftPOS Back Office.  Please note that when creating a new member, you must provide a value for FirstName, Surname, EmailAddress and ClassificationId as a bare minimum.  The ClassificationId must be a valid classification in SwiftPOS that is either assigned to all venues or the venue that the LocationId from the request is assigned to.  Refer to the model below for the full list of fields that can be set when creating a new member.  It is also possible to either manually set the desired MemberId to assign to the new member or have one automatically generated.  By setting Id to 0 or not providing it at all, the next available number will be automatically assigned, otherwise the provided Id will attempt to be assigned to the new member.
    # @param member The member to create.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def member_post_with_http_info(member, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MemberApi.member_post ..."
      end
      # verify the required parameter 'member' is set
      if @api_client.config.client_side_validation && member.nil?
        fail ArgumentError, "Missing the required parameter 'member' when calling MemberApi.member_post"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling MemberApi.member_post"
      end
      # resource path
      local_var_path = "/api/Member"

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

      # http body (model)
      post_body = @api_client.object_to_http_body(member)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberApi#member_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an existing member.
    # Updates the details of a SwiftPOS member.  It is possible to update the member’s classification but only if the member is already assigned to a classification with a ClassificationType of 1 (Back Office Primary).  The ClassificationId property can be changed to any other valid classification that exists in SwiftPOS.  The members account active from / active to dates can be updated, but only for the account with the AccountType of 1 (Back Office Cash Acccount).  Refer to the model below for the full list of which fields can be modified.
    # @param member The member to update.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Member]
    def member_put(member, api_key, opts = {})
      data, _status_code, _headers = member_put_with_http_info(member, api_key, opts)
      return data
    end

    # Updates an existing member.
    # Updates the details of a SwiftPOS member.  It is possible to update the member’s classification but only if the member is already assigned to a classification with a ClassificationType of 1 (Back Office Primary).  The ClassificationId property can be changed to any other valid classification that exists in SwiftPOS.  The members account active from / active to dates can be updated, but only for the account with the AccountType of 1 (Back Office Cash Acccount).  Refer to the model below for the full list of which fields can be modified.
    # @param member The member to update.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Member, Fixnum, Hash)>] Member data, response status code and response headers
    def member_put_with_http_info(member, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MemberApi.member_put ..."
      end
      # verify the required parameter 'member' is set
      if @api_client.config.client_side_validation && member.nil?
        fail ArgumentError, "Missing the required parameter 'member' when calling MemberApi.member_put"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling MemberApi.member_put"
      end
      # resource path
      local_var_path = "/api/Member"

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

      # http body (model)
      post_body = @api_client.object_to_http_body(member)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Member')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberApi#member_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Tops up a member account.
    # Tops up a member’s cash account and creates an associated back office sale for auditing purposes.  If ePurseId is 0 then a back office cash account topup will be performed.  If ePurseId is between 1 and 5 then an ePurse cash account topup will be performed.
    # @param id The member id.
    # @param amount The amount to topup.
    # @param media_id The media that the topup was paid with.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :member_type The type of member.
    # @option opts [Integer] :e_purse_id The id of the ePurse account to topup.
    # @return [nil]
    def member_put_account(id, amount, media_id, api_key, opts = {})
      member_put_account_with_http_info(id, amount, media_id, api_key, opts)
      return nil
    end

    # Tops up a member account.
    # Tops up a member’s cash account and creates an associated back office sale for auditing purposes.  If ePurseId is 0 then a back office cash account topup will be performed.  If ePurseId is between 1 and 5 then an ePurse cash account topup will be performed.
    # @param id The member id.
    # @param amount The amount to topup.
    # @param media_id The media that the topup was paid with.
    # @param api_key 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :member_type The type of member.
    # @option opts [Integer] :e_purse_id The id of the ePurse account to topup.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def member_put_account_with_http_info(id, amount, media_id, api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MemberApi.member_put_account ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MemberApi.member_put_account"
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling MemberApi.member_put_account"
      end
      # verify the required parameter 'media_id' is set
      if @api_client.config.client_side_validation && media_id.nil?
        fail ArgumentError, "Missing the required parameter 'media_id' when calling MemberApi.member_put_account"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling MemberApi.member_put_account"
      end
      # resource path
      local_var_path = "/api/Member/{id}/Account".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'amount'] = amount
      query_params[:'mediaId'] = media_id
      query_params[:'memberType'] = opts[:'member_type'] if !opts[:'member_type'].nil?
      query_params[:'ePurseId'] = opts[:'e_purse_id'] if !opts[:'e_purse_id'].nil?

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
        @api_client.config.logger.debug "API called: MemberApi#member_put_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
