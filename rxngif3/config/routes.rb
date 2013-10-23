Rxngif3::Application.routes.draw do

get "pictures", :controller => "pictures", :action => "index"

get "pictures/new", :controller => "pictures", :action => "new"

get "pictures/:id", :controller => "pictures", :action => "show"

get "create_picture", :controller => "pictures", :action => "create"

get "delete/:id", :controller => "pictures", :action => "delete"

get "alter_pic/:id", :controller => "pictures", :action => "alter"

get "edit/:id", :controller => "pictures", :action => "edit"



end
