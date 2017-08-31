class RecipesController < ApplicationController
	def single_recipe_method
		@recipe = Recipe.first #single recipe hash
		render "single_recipe.html.erb"
	end

	def all_recipes_method
		@recipes = Recipe.all #array of recipe hashes
		render "all_recipes.html.erb"
	end

	def new_recipe_method
		render "new_recipe.html.erb"
	end

	def new_recipe_result_method
		@new_recipe = Recipe.new(
			title: params[:title],
			chef: params[:chef],
			ingredients: params[:ingredients],
			directions: params[:directions],
			image: params[:image],
			prep_time: params[:prep_time],
			)
		@new_recipe.save
		render "new_recipe_result.html.erb"
	end
end
