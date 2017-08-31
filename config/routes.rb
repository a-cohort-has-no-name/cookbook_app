Rails.application.routes.draw do
  get "/single_recipe" => "recipes#single_recipe_method"
  get "/all_recipes" => "recipes#all_recipes_method"

  get "/new_recipe" => "recipes#new_recipe_method"
  post "/new_recipe_result" => "recipes#new_recipe_result_method"
end
