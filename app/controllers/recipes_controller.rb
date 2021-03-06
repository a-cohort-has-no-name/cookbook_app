class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all #array of recipe hashes
		sort_attribute = params[:sort] #comes from query params
		if sort_attribute
			@recipes = Recipe.all.order(sort_attribute)
		end
		render "index.html.erb"
	end

	def new
		render "new.html.erb"
	end

	def create
		new_recipe = Recipe.new(
			title: params[:title],
			ingredients: params[:ingredients],
			directions: params[:directions],
			image: params[:image],
			prep_time: params[:prep_time],
			user_id: current_user.id
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
			ingredients: params[:ingredients],
			directions: params[:directions],
			image: params[:image],
			prep_time: params[:prep_time]
			)
		flash[:info] = "Recipe successfully updated!"
		redirect_to "/recipes/#{recipe.id}"
	end

	def destroy
		@recipe = Recipe.find_by(id: params[:id])
		@recipe.destroy
		flash[:warning] = "Recipe succesfully destroyed!"
		redirect_to "/recipes"
	end
end












