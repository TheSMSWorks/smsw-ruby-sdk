=begin
#The SMS Works API

#The SMS Works provides a low-cost, reliable SMS API for developers. Pay only for delivered texts, all failed messages are refunded.

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::TestResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TestResponse' do
  before do
    # run before each test
    @instance = SwaggerClient::TestResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TestResponse' do
    it 'should create an instance of TestResponse' do
      expect(@instance).to be_instance_of(SwaggerClient::TestResponse)
    end
  end
  describe 'test attribute "message"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
