require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'lib/CodeBreaker'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get '/' do
	erb :Home
end

get '/CodeBreaker' do 
	number = params[:numerotext]
	cb = CodeBreaker.new
	@numeros = cb.guess(number)
end

