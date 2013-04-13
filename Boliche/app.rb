require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'lib/GetScore'


configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get '/' do
	erb :Home
end

get '/calcular' do
	r11=params[:r11]
    r12=params[:r12]
    r21=params[:r21]
    r22=params[:r22]
    r31=params[:r31]
    r32=params[:r32]
    r41=params[:r41]
    r42=params[:r42]
    r51=params[:r51]
    r52=params[:r52]
    r61=params[:r61]
    r62=params[:r62]
    r71=params[:r71]
    r72=params[:r72]
    r81=params[:r81]
    r82=params[:r82]
    r91=params[:r91]
    r92=params[:r92]
    r101=params[:r101]
    r102=params[:r102]
    r103=params[:r103]    
	getScore = GetScore.new
   @score = getScore.calcularScore(r11.to_i, r12.to_i, r21.to_i, r22.to_i, r31.to_i, r32.to_i, r41.to_i, r42.to_i, r51.to_i, r52.to_i, r61.to_i, r62.to_i, r71.to_i, r72.to_i, r81.to_i, r82.to_i, r91.to_i, r92.to_i, r101.to_i, r102.to_i, r103.to_i)
	erb :Home
end