Rails.application.routes.draw do
  get "/recipes" => "recipes#index"
  # get "/all_recipes" => "recipes#all_recipes_method"
  get "/recipes/new" => "recipes#new"
  # get "/new_recipe" => "recipes#new_recipe_method"
  post "/recipes" => "recipes#create"
  # post "/new_recipe_result" => "recipes#new_recipe_result_method"
  get "/recipes/:id" => "recipes#show"
  # get "/single_recipe" => "recipes#single_recipe_method"
  get "/recipes/:id/edit" => "recipes#edit"
  patch "/recipes/:id" => "recipes#update"
  delete "/recipes/:id" => "recipes#destroy"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
