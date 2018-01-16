class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

# key = ENV.fetch('LCBO_API_KEY')
# product = Lcbo::Products.new(key).fetch(438457)

# puts product.name
# # Hopsta La Vista
# puts product.tags.inspect
