class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all #array of recipe hashes
		render "index.html.erb"
	end

	def new
		render "new.html.erb"
	end

	def create
		new_recipe = Recipe.new(
			title: params[:title],
			chef: params[:chef],
			ingredients: params[:ingredients],
			directions: params[:directions],
			image: params[:image],
			prep_time: params[:prep_time],
			)
		new_recipe.save
		flash[:success] = "Recipe successfully created!"
		redirect_to "/recipes/#{new_recipe.id}"
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
		recipe = Recipe.find_by(id: params[:id]) 
		recipe.update(
			title: params[:title],
			chef: params[:chef],
			ingredients: params[:ingredients],
			directions: params[:directions],
			image: params[:image],
			prep_time: params[:prep_time],
			)
		flash[:success] = "Recipe successfully updated!"
		redirect_to "/recipes/#{recipe.id}"
	end

	def destroy
		@recipe = Recipe.find_by(id: params[:id])
		@recipe.destroy
		flash[:success] = "Recipe succesfully destroyed!"
		redirect_to "/recipes"
	end
end












