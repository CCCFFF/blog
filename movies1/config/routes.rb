Movies1::Application.routes.draw do
#CREATE
 get "movies/new" => "movies#new"
 post "movies" => "movies#create"

#READ
 get "/movies" => "movies#index"
 get "/movies/:id" => "movies#show"

#UPDATE
 get "movies/:id/edit" => "movies#edit"
 patch "movies/:id" => "movies#update"

#DESTROY
delete "movies/:id" => "movies#destroy"



end
