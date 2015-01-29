require 'sinatra'
require_relative './model/recipes'



get '/' do
	erb :home
end
	
get '/drinks_all' do 
	erb :search_all
end

get '/drink' do
	erb :drink
end



