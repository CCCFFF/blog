Appointments::Application.routes.draw do
  # Routes for the Insurance resource:
  # CREATE
  get '/insurances/new', controller: 'insurances', action: 'new', as: 'new_insurance'
  post '/insurances', controller: 'insurances', action: 'create'

  # READ
  get '/insurances', controller: 'insurances', action: 'index'
  get '/insurances/:id', controller: 'insurances', action: 'show', as: 'insurance'

  # UPDATE
  get '/insurances/:id/edit', controller: 'insurances', action: 'edit', as: 'edit_insurance'
  patch '/insurances/:id', controller: 'insurances', action: 'update'

  # DELETE
  delete '/insurances/:id', controller: 'insurances', action: 'destroy'
  #------------------------------

  # Routes for the Patient resource:
  # CREATE
  get '/patients/new', controller: 'patients', action: 'new', as: 'new_patient'
  post '/patients', controller: 'patients', action: 'create'

  # READ
  get '/patients', controller: 'patients', action: 'index'
  get '/patients/:id', controller: 'patients', action: 'show', as: 'patient'

  # UPDATE
  get '/patients/:id/edit', controller: 'patients', action: 'edit', as: 'edit_patient'
  patch '/patients/:id', controller: 'patients', action: 'update'

  # DELETE
  delete '/patients/:id', controller: 'patients', action: 'destroy'
  #------------------------------

  # Routes for the Appointment resource:
  # CREATE
  get '/appointments/new', controller: 'appointments', action: 'new', as: 'new_appointment'
  post '/appointments', controller: 'appointments', action: 'create'

  # READ
  get '/appointments', controller: 'appointments', action: 'index'
  get '/appointments/:id', controller: 'appointments', action: 'show', as: 'appointment'

  # UPDATE
  get '/appointments/:id/edit', controller: 'appointments', action: 'edit', as: 'edit_appointment'
  patch '/appointments/:id', controller: 'appointments', action: 'update'

  # DELETE
  delete '/appointments/:id', controller: 'appointments', action: 'destroy'
  #------------------------------

  # Routes for the Doctor resource:
  # CREATE
  get '/doctors/new', controller: 'doctors', action: 'new', as: 'new_doctor'
  post '/doctors', controller: 'doctors', action: 'create'

  # READ
  get '/doctors', controller: 'doctors', action: 'index'
  get '/doctors/:id', controller: 'doctors', action: 'show', as: 'doctor'

  # UPDATE
  get '/doctors/:id/edit', controller: 'doctors', action: 'edit', as: 'edit_doctor'
  patch '/doctors/:id', controller: 'doctors', action: 'update'

  # DELETE
  delete '/doctors/:id', controller: 'doctors', action: 'destroy'
  #------------------------------

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
