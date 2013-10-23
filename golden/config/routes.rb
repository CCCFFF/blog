Golden::Application.routes.draw do

    # READ
  get "pictures/show/:id", :controller => "pictures", :action => "show"
  get "pictures", :controller => "pictures", :action => "index"


# CREATE
  get "pictures/new", :controller => "pictures", :action => "new"
  get "pictures/create_new", :controller => "pictures", :action => "create"



  # UPDATE
  get "pictures/edit/:id", :controller => "pictures", :action => "edit"
  get "pictures/update/:id", :controller => "pictures", :action => "update"

  # DESTROY
  get "pictures/delete/:id", :controller => "pictures", :action => "delete"

end
