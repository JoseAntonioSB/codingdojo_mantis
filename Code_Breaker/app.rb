require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'lib/codebreaker'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end


get '/' do
	erb :home
end

get '/Codebreaker' do
	number = params[:guesstext]
	cb = Codebreaker.new
	@guess = cb.guess(number)

end