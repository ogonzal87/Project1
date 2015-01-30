require 'sinatra'
require_relative './model/recipes'


get '/' do
	erb :home
end

get '/drinksall' do
  @drinksall = Recipe.all
  erb :drinksall
end

# get '/drinks_all' do
#   @search = params[:search]
#   if @search && @search.length > 0
#     @drinks_all = Recipe.search(@search)
#   else
#     @drinks_all = Recipe.all
#   end
#   erb :drinks_all
# end

get '/drinksall/:id' do
  @drink = Recipe.find(params[:id].to_i)
  erb :drink
end