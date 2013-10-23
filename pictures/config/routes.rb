Pictures::Application.routes.draw do

get "cars", :controller => "cars", :action => "index"

get "new", :controller => "cars", :action => "new"

get "create", :controller => "cars", :action => "create"

get "show/:id", :controller => "cars", :action => "show"

get "delete/:id", :controller => "cars", :action => "delete"

get "edit/:id", :controller => "cars", :action => "edit"

get "alter/:id", :controller => "cars", :action => "alter"

end
