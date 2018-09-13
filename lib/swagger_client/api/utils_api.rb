=begin
#The SMS Works API

#The SMS Works provides a low-cost, reliable SMS API for developers. Pay only for delivered texts, all failed messages are refunded.

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class UtilsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Returns the customer ID to the caller
    # @param [Hash] opts the optional parameters
    # @return [TestResponse]
    def test(opts = {})
      data, _status_code, _headers = test_with_http_info(opts)
      return data
    end

    # 
    # Returns the customer ID to the caller
    # @param [Hash] opts the optional parameters
    # @return [Array<(TestResponse, Fixnum, Hash)>] TestResponse data, response status code and response headers
    def test_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UtilsApi.test ..."
      end
      # resource path
      local_var_path = "/utils/test"

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
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TestResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UtilsApi#test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
