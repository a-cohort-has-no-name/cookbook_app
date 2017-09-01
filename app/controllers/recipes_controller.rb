class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all #array of recipe hashes
		render "index.html.erb"
	end

	def new
		render "new.html.erb"
	end

	def create
		@new_recipe = Recipe.new(
			title: params[:title],
			chef: params[:chef],
			ingredients: params[:ingredients],
			directions: params[:directions],
			image: params[:image],
			prep_time: params[:prep_time],
			)
		@new_recipe.save
		render "create.html.erb"
	end

	def show
		@recipe = Recipe.find_by(id: params[:id]) #single recipe hash
		# @recipe = Recipe.find(params[:id])
		render "show.html.erb"
	end

	def edit
		@recipe = Recipe.find_by(id: params[:id])
		render "edit.html.erb"
	end

	def update
		@recipe = Recipe.find_by(id: params[:id]) 
		@recipe.update(
			title: params[:title],
			chef: params[:chef],
			ingredients: params[:ingredients],
			directions: params[:directions],
			image: params[:image],
			prep_time: params[:prep_time],
			)
		render "update.html.erb"
	end

	def destroy
		
	end
end












