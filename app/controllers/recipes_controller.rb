class RecipesController < ApplicationController
	def single_recipe_method
		@recipe = Recipe.first #single recipe hash
		render "single_recipe.html.erb"
	end

	def all_recipes_method
		@recipes = Recipe.all #array of recipe hashes
		render "all_recipes.html.erb"
	end
end
