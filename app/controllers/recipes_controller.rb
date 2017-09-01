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
		@recipe = Recipe.first #single recipe hash
		render "single_recipe.html.erb"
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end
