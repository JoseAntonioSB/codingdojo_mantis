require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'lib/shopping_cart'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get '/' do
	erb :Home
end

get '/Comprarlibros' do
	Comprar = ShoppingCart.new
	libro1 = params[:libro1]
	libro2 = params[:libro2]
	libro3 = params[:libro3]
	libro4 = params[:libro4]
	libro5 = params[:libro5]
	
	@total	= Comprar.cobrarLibros(libro1, libro2, libro3, libro4, libro5)
end