Rxngif2::Application.routes.draw do
get "/pictures", :controller => "pictures", :action => "index"
get "/pictures/new", :controller => "pictures", :action => "new"
get "/pictures/:id", :controller => "pictures", :action => "show"
get "create_picture", :controller => "pictures", :action => "create"


end
