Rails.application.routes.draw do
  get "/single_recipe" => "recipes#single_recipe_method"
  get "/all_recipes" => "recipes#all_recipes_method"
end
