=begin
#The SMS Works API

#The SMS Works provides a low-cost, reliable SMS API for developers. Pay only for delivered texts, all failed UK messages are refunded.

The version of the OpenAPI document: 1.9.0
Contact: support@thesmsworks.co.uk
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'cgi'

module OpenapiClient
  class MessagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Schedules an SMS message to be sent at the date-time you specify
    # @param sms_message [Message] Message properties
    # @param [Hash] opts the optional parameters
    # @return [Array<ScheduledMessageResponse>]
    def message_schedule_post(sms_message, opts = {})
      data, _status_code, _headers = message_schedule_post_with_http_info(sms_message, opts)
      data
    end

    # Schedules an SMS message to be sent at the date-time you specify
    # @param sms_message [Message] Message properties
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ScheduledMessageResponse>, Integer, Hash)>] Array<ScheduledMessageResponse> data, response status code and response headers
    def message_schedule_post_with_http_info(sms_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.message_schedule_post ...'
      end
      # verify the required parameter 'sms_message' is set
      if @api_client.config.client_side_validation && sms_message.nil?
        fail ArgumentError, "Missing the required parameter 'sms_message' when calling MessagesApi.message_schedule_post"
      end
      # resource path
      local_var_path = '/message/schedule'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(sms_message)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ScheduledMessageResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"MessagesApi.message_schedule_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#message_schedule_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send an SMS Message
    # @param sms_message [Message] Message properties
    # @param [Hash] opts the optional parameters
    # @return [SendMessageResponse]
    def message_send_post(sms_message, opts = {})
      data, _status_code, _headers = message_send_post_with_http_info(sms_message, opts)
      data
    end

    # Send an SMS Message
    # @param sms_message [Message] Message properties
    # @param [Hash] opts the optional parameters
    # @return [Array<(SendMessageResponse, Integer, Hash)>] SendMessageResponse data, response status code and response headers
    def message_send_post_with_http_info(sms_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.message_send_post ...'
      end
      # verify the required parameter 'sms_message' is set
      if @api_client.config.client_side_validation && sms_message.nil?
        fail ArgumentError, "Missing the required parameter 'sms_message' when calling MessagesApi.message_send_post"
      end
      # resource path
      local_var_path = '/message/send'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(sms_message)

      # return_type
      return_type = opts[:debug_return_type] || 'SendMessageResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"MessagesApi.message_send_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#message_send_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get failed messages matching your search criteria
    # @param query [Query] 
    # @param [Hash] opts the optional parameters
    # @return [Array<MessageResponse>]
    def messages_failed_post(query, opts = {})
      data, _status_code, _headers = messages_failed_post_with_http_info(query, opts)
      data
    end

    # Get failed messages matching your search criteria
    # @param query [Query] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<MessageResponse>, Integer, Hash)>] Array<MessageResponse> data, response status code and response headers
    def messages_failed_post_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.messages_failed_post ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling MessagesApi.messages_failed_post"
      end
      # resource path
      local_var_path = '/messages/failed'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(query)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<MessageResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"MessagesApi.messages_failed_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#messages_failed_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get unread uncoming messages matching your search criteria
    # @param query [Query] 
    # @param [Hash] opts the optional parameters
    # @return [Array<MessageResponse>]
    def messages_inbox_post(query, opts = {})
      data, _status_code, _headers = messages_inbox_post_with_http_info(query, opts)
      data
    end

    # Get unread uncoming messages matching your search criteria
    # @param query [Query] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<MessageResponse>, Integer, Hash)>] Array<MessageResponse> data, response status code and response headers
    def messages_inbox_post_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.messages_inbox_post ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling MessagesApi.messages_inbox_post"
      end
      # resource path
      local_var_path = '/messages/inbox'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(query)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<MessageResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"MessagesApi.messages_inbox_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#messages_inbox_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the message with the mathcing messageid
    # @param messageid [String] The ID of the message you would like returned
    # @param [Hash] opts the optional parameters
    # @return [DeletedMessageResponse]
    def messages_messageid_delete(messageid, opts = {})
      data, _status_code, _headers = messages_messageid_delete_with_http_info(messageid, opts)
      data
    end

    # Delete the message with the mathcing messageid
    # @param messageid [String] The ID of the message you would like returned
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeletedMessageResponse, Integer, Hash)>] DeletedMessageResponse data, response status code and response headers
    def messages_messageid_delete_with_http_info(messageid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.messages_messageid_delete ...'
      end
      # verify the required parameter 'messageid' is set
      if @api_client.config.client_side_validation && messageid.nil?
        fail ArgumentError, "Missing the required parameter 'messageid' when calling MessagesApi.messages_messageid_delete"
      end
      # resource path
      local_var_path = '/messages/{messageid}'.sub('{' + 'messageid' + '}', CGI.escape(messageid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeletedMessageResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"MessagesApi.messages_messageid_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#messages_messageid_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a logged message by the message ID
    # @param messageid [String] The ID of the message you would like returned
    # @param [Hash] opts the optional parameters
    # @return [MessageResponse]
    def messages_messageid_get(messageid, opts = {})
      data, _status_code, _headers = messages_messageid_get_with_http_info(messageid, opts)
      data
    end

    # Retrieve a logged message by the message ID
    # @param messageid [String] The ID of the message you would like returned
    # @param [Hash] opts the optional parameters
    # @return [Array<(MessageResponse, Integer, Hash)>] MessageResponse data, response status code and response headers
    def messages_messageid_get_with_http_info(messageid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.messages_messageid_get ...'
      end
      # verify the required parameter 'messageid' is set
      if @api_client.config.client_side_validation && messageid.nil?
        fail ArgumentError, "Missing the required parameter 'messageid' when calling MessagesApi.messages_messageid_get"
      end
      # resource path
      local_var_path = '/messages/{messageid}'.sub('{' + 'messageid' + '}', CGI.escape(messageid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MessageResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"MessagesApi.messages_messageid_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#messages_messageid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve up to 1000 messages matching your search criteria
    # @param query [Query] 
    # @param [Hash] opts the optional parameters
    # @return [Array<MessageResponse>]
    def messages_post(query, opts = {})
      data, _status_code, _headers = messages_post_with_http_info(query, opts)
      data
    end

    # Retrieve up to 1000 messages matching your search criteria
    # @param query [Query] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<MessageResponse>, Integer, Hash)>] Array<MessageResponse> data, response status code and response headers
    def messages_post_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.messages_post ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling MessagesApi.messages_post"
      end
      # resource path
      local_var_path = '/messages'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(query)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<MessageResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"MessagesApi.messages_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#messages_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of messages scheduled from your account, comprising any messages scheduled in the last 3 months and any scheduled to send in the future
    # @param [Hash] opts the optional parameters
    # @return [ScheduledMessagesResponse]
    def messages_schedule_get(opts = {})
      data, _status_code, _headers = messages_schedule_get_with_http_info(opts)
      data
    end

    # Returns a list of messages scheduled from your account, comprising any messages scheduled in the last 3 months and any scheduled to send in the future
    # @param [Hash] opts the optional parameters
    # @return [Array<(ScheduledMessagesResponse, Integer, Hash)>] ScheduledMessagesResponse data, response status code and response headers
    def messages_schedule_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.messages_schedule_get ...'
      end
      # resource path
      local_var_path = '/messages/schedule'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ScheduledMessagesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"MessagesApi.messages_schedule_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#messages_schedule_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancels a scheduled SMS message
    # @param messageid [String] The ID of the message you would like returned
    # @param [Hash] opts the optional parameters
    # @return [CancelledMessageResponse]
    def messages_schedule_messageid_delete(messageid, opts = {})
      data, _status_code, _headers = messages_schedule_messageid_delete_with_http_info(messageid, opts)
      data
    end

    # Cancels a scheduled SMS message
    # @param messageid [String] The ID of the message you would like returned
    # @param [Hash] opts the optional parameters
    # @return [Array<(CancelledMessageResponse, Integer, Hash)>] CancelledMessageResponse data, response status code and response headers
    def messages_schedule_messageid_delete_with_http_info(messageid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.messages_schedule_messageid_delete ...'
      end
      # verify the required parameter 'messageid' is set
      if @api_client.config.client_side_validation && messageid.nil?
        fail ArgumentError, "Missing the required parameter 'messageid' when calling MessagesApi.messages_schedule_messageid_delete"
      end
      # resource path
      local_var_path = '/messages/schedule/{messageid}'.sub('{' + 'messageid' + '}', CGI.escape(messageid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CancelledMessageResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"MessagesApi.messages_schedule_messageid_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#messages_schedule_messageid_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sends an SMS flash message, which appears on the recipients lock screen
    # @param sms_message [Message] Message properties
    # @param [Hash] opts the optional parameters
    # @return [SendMessageResponse]
    def send_flash_message(sms_message, opts = {})
      data, _status_code, _headers = send_flash_message_with_http_info(sms_message, opts)
      data
    end

    # Sends an SMS flash message, which appears on the recipients lock screen
    # @param sms_message [Message] Message properties
    # @param [Hash] opts the optional parameters
    # @return [Array<(SendMessageResponse, Integer, Hash)>] SendMessageResponse data, response status code and response headers
    def send_flash_message_with_http_info(sms_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.send_flash_message ...'
      end
      # verify the required parameter 'sms_message' is set
      if @api_client.config.client_side_validation && sms_message.nil?
        fail ArgumentError, "Missing the required parameter 'sms_message' when calling MessagesApi.send_flash_message"
      end
      # resource path
      local_var_path = '/message/flash'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(sms_message)

      # return_type
      return_type = opts[:debug_return_type] || 'SendMessageResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"MessagesApi.send_flash_message",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#send_flash_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
