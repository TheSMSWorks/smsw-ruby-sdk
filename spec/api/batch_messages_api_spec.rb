=begin
#The SMS Works API

#The SMS Works provides a low-cost, reliable SMS API for developers. Pay only for delivered texts, all failed messages are refunded.

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::BatchMessagesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BatchMessagesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::BatchMessagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BatchMessagesApi' do
    it 'should create an instance of BatchMessagesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::BatchMessagesApi)
    end
  end

  # unit tests for cancel_scheduled_batch_job
  # 
  # Cancels a scheduled SMS message
  # @param batchid The ID of the batch you would like returned
  # @param [Hash] opts the optional parameters
  # @return [CancelledMessageResponse]
  describe 'cancel_scheduled_batch_job test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_batch_by_id
  # 
  # Retrieve all messages in a batch with the given batch ID
  # @param batchid The ID of the batch you would like returned
  # @param [Hash] opts the optional parameters
  # @return [MessagesResponse]
  describe 'get_batch_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for schedule_batch
  # 
  # Schedules a batch of SMS messages to be sent at the date time you specify
  # @param sms_message Message properties
  # @param [Hash] opts the optional parameters
  # @return [ScheduledBatchResponse]
  describe 'schedule_batch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_batch
  # 
  # Send a single SMS message to multiple recipients
  # @param sms_message Message properties
  # @param [Hash] opts the optional parameters
  # @return [BatchMessageResponse]
  describe 'send_batch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
