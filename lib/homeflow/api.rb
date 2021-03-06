require 'hashie/mash'
require 'json'
require 'httparty'

current_dir = File.expand_path(File.dirname(__FILE__))

require current_dir + "/api/request"
require current_dir + "/api/queryable"
require current_dir + "/api/resource"
require current_dir + "/api/collection"
require current_dir + "/api/request_specification"
require current_dir + "/api/resource_identifier"
require current_dir + "/api/post"
require current_dir + "/api/query"
require current_dir + "/api/exceptions"

require current_dir + "/api/search"
require current_dir + "/api/property"
require current_dir + "/api/county"
require current_dir + "/api/location"
require current_dir + "/api/place"
require current_dir + "/api/agency"
require current_dir + "/api/branch"
require current_dir + "/api/user"
require current_dir + "/api/session"
require current_dir + "/api/lead"
require current_dir + "/api/portal"
require current_dir + "/api/postcode"
require current_dir + "/api/site"
require current_dir + '/api/site_page'
require current_dir + '/api/message'
require current_dir + "/api/response"

module Homeflow
  module API

    class << self
      attr_accessor :configuration
    end

    # Gets or create a new configuration instance
    def self.config
      self.configuration ||= Configuration.new
    end

    # Provides a block allowing for eacy configuration
    # ==== Examples
    #   Homeflow::API.configure do |config|
    #      config.api_key = "Your api key here"
    #   end
    #
    def self.configure
      yield(config)
    end

    # A configuration instance
    class Configuration
      attr_accessor :api_key, :source

      def initialize
        @api_key = 'API_KEY_REQUIRED'
        @source = 'http://localhost:3000'
      end
    end

  end
end