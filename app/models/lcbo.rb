module Lcbo
  require_relative 'product_request'
  require_relative 'product_response'

  class Products  < ApplicationRecord
    attr_accessor :key

    def initialize(key)
      @key = $LCBO_API_KEY
    end

    def fetch(product_id)
      connection = HTTP

      product_response = ProductRequest.new(key, product_id, connection).response
      fail LcboError, product_response.error_message unless product_response.success?

      product_response.product
    end
  end

  class ProductRequest  < ApplicationRecord
    attr_reader :key, :product_id, :connection

    def initialize(key, product_id, connection)
      @key = $LCBO_API_KEY
      @product_id = product_id
      @connection = connection
    end

    def response
      http_response = connection
        .headers('Authorization' => "Token #{key}")
        .get(url)
      ProductResponse.new(http_response)
    end

    def url
      "https://lcboapi.com/products/#{product_id}"
    end
  end

  class ProductResponse  < ApplicationRecord
    attr_reader :http_response

    DEFAULT_ERROR_MESSAGE = 'There was an error retrieving product details.'.freeze

    def initialize(http_response)
      @http_response = http_response
    end

    def success?
      http_response.status == 200
    end

    def error_message
      data.fetch('message', DEFAULT_ERROR_MESSAGE)
    end

    def product
      Product.new(data.fetch('result'))
    end

    private

    def data
      http_response.parse(:json)
    end
  end

  class Product  < ApplicationRecord
    attr_accessor :details

    def initialize(details)
      @details = details
    end

    def name
      details['name']
    end

    def tags
      details.fetch('tags', '').split(' ')
    end
  end
end

# dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
# require File.join(dir, 'httparty')

# class Lcbo < ActiveRecord::Base
#   include HTTParty
#   base_url 'lcboapi.com'

#   def initialize(key)
#       self.class.default_params LCBO_API_KEY: key
#     end

#     def bos_seasonal_beer(bo)
#       bo = self.class.get('/products?q=beaus')
#       bos_seasonal_beer = bo.class.get('/products?where=is_seasonal')
#   end
# end