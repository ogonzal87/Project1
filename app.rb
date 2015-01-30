require 'sinatra'
require_relative './model/recipes'



get '/' do
	erb :home
end

	
get '/drinksall' do
  @search = params[:search]
  if @search && @search.length > 0
    @drinksall = Recipes.search(@search)
  else
    @drinksall = Recipes.all
  end
  erb :drinksall
end

get '/drinksall/:id' do
	@drink = Recipes.find(params[:id].to_i)
	erb :drink
end



