Vegetables::Application.routes.draw do
  #CREATE
  get "/veggies/new" => "veggies#new"
  post "/veggies/" => "veggies#create"

  #READ
  get "/veggies" => "veggies#index"
  get "veggies/:id" => "veggies#show"

  #UPDATE
  get "/veggies/:id/edit" => "veggies#edit"
  patch "/veggies/:id" => "veggies#update"

  #DESTROY
  delete "veggies/:id" => "veggies#destroy"
end
