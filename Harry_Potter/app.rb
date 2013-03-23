require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get '/' do
	erb :Home
end

get '/ViewShopppingCart' do
	@shoppingCartTotal = "You have to pay 8 toñolares"
end