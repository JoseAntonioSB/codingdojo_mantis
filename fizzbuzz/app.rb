require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'lib/fizzbuzz'


configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get '/' do
	erb :Home
end

get '/fizzbuzz' do
	number = params[:fbtext]
	fz = FizzBuzz.new
	@song = fz.sing(number)
	# if (number == "1")
	# 	@song="@, 1, @"
	# elsif (number == "3")
	# 	@song="@, 1, 2, Fizz, @"
	# else
	# 	@song = "Sing pig"
	# end
end


