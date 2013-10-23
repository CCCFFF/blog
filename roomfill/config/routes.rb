Roomfill::Application.routes.draw do

  #CREATE_home
  get "/homes/new" => "homes#new", as: "new_home"
  post "/homes" => "homes#create", as: "homes"
  #READ_home
  get "/homes" => "homes#index"
  get "/homes/:id" => "homes#show", as: "home"
  #UPDATE_home
  get "/homes/:id/edit" => "homes#edit", as: "edit_home"
  patch "/homes/:id"  => "homes#update"
  #DESTROY_home
  delete "/homes/:id" => "homes#destroy"

  #CREATE_pictures
  get "/pictures/new" => "pictures#new", as: "new_picture"
  post "/pictures" => "pictures#create", as: "pictures"
  #READ_pictures
  get "/pictures" => "pictures#index"
  get "/pictures/:id" => "pictures#show", as: "picture"
  #UPDATE_pictures
  get "pictures/:id/edit" => "pictures#edit", as: "edit_picture"
  patch "/pictures/:id" => "pictures#update"
  #DELETE_pictures
  delete "/pictures/:id" => "pictures#destroy"

  #CREATE_video
  get "/videos/new" => "videos#new", as: "new_video"
  post "videos" => "videos#create", as: "videos"

  #READ_video
  get "/videos" => "videos#index"
  get "/videos/:id" => "videos#show", as: "video"
  #UPDATE_video
  get "/videos/:id/edit" => "videos#edit", as: "edit_video"
  patch "/videos/:id" => "videos#update"

  #DELETE_video
  delete "/videos/:id" => "video#destroy"

  #CREATE_posts

  #READ_posts

  #UPDATE_posts

  #DELETE_posts

  #CREATE_comments

  #READ_comments

  #UPDATE_comments

  #DELETE_comments

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
