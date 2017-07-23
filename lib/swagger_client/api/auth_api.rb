=begin
#The SMS Works API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module SwaggerClient
  class AuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Generates an API Key/Secret pair
    # @param customerid The Customer ID
    # @param [Hash] opts the optional parameters
    # @return [ApiKeyResponse]
    def key_secret(customerid, opts = {})
      data, _status_code, _headers = key_secret_with_http_info(customerid, opts)
      return data
    end

    # 
    # Generates an API Key/Secret pair
    # @param customerid The Customer ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiKeyResponse, Fixnum, Hash)>] ApiKeyResponse data, response status code and response headers
    def key_secret_with_http_info(customerid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthApi.key_secret ..."
      end
      # verify the required parameter 'customerid' is set
      if @api_client.config.client_side_validation && customerid.nil?
        fail ArgumentError, "Missing the required parameter 'customerid' when calling AuthApi.key_secret"
      end
      # resource path
      local_var_path = "/auth/getApiKey"

      # query parameters
      query_params = {}
      query_params[:'customerid'] = customerid

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :return_type => 'ApiKeyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#key_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Generates a Json Web Token
    # @param credentials API Key &amp; Secret
    # @param [Hash] opts the optional parameters
    # @return [TokenResponse]
    def login(credentials, opts = {})
      data, _status_code, _headers = login_with_http_info(credentials, opts)
      return data
    end

    # 
    # Generates a Json Web Token
    # @param credentials API Key &amp; Secret
    # @param [Hash] opts the optional parameters
    # @return [Array<(TokenResponse, Fixnum, Hash)>] TokenResponse data, response status code and response headers
    def login_with_http_info(credentials, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthApi.login ..."
      end
      # verify the required parameter 'credentials' is set
      if @api_client.config.client_side_validation && credentials.nil?
        fail ArgumentError, "Missing the required parameter 'credentials' when calling AuthApi.login"
      end
      # resource path
      local_var_path = "/auth/token"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(credentials)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TokenResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#login\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end