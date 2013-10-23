Food::Application.routes.draw do
 #CREATE
 get "/foods/new" => "foods#new"
 #READ
 get "/foods" => "foods#index"

 #UPDATE
 #DESTROY

end
