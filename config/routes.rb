Rails.application.routes.draw do
  get "/single_recipe" => "recipes#single_recipe_method"
end
