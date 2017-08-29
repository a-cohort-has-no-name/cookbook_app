class RecipesController < ApplicationController
	def single_recipe_method
		@recipe = Recipe.first
		render "single_recipe.html.erb"
	end
end
