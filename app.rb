require 'sinatra'
require_relative './model/recipes'

get '/' do
	erb :home
end

get '/drinksall' do
  @search = params[:search]
  if @search && @search.length > 0
    @drinks = Recipes.search(@search)
  else
    @drinks = Recipes.all
  end
  erb :drinksall
end

get '/drinksall/:id' do
	@drink = Recipes.find(params[:id].to_i)
	erb :drink
end

get '/about' do
  erb :about
end
