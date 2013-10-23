Cardealer::Application.routes.draw do

  #CREATE
  get "/cars/new" => "cars#new"
  post "/cars" => "cars#create"

  #READ
  get "/cars" => "cars#index"
  get "cars/:id" => "cars#show"

  #UPDATE
  get "cars/:id/edit" => "cars#edit"
  patch "cars/:id" => "cars#update"

  #DESTROY
  delete "cars/:id" => "cars#delete"


end
