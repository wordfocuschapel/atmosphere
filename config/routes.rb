Rails.application.routes.draw do
  
resources :contacts
# get 'contacts/new'
# get 'contacts/create'

  namespace :admin do
    resources :users
#  get 'users/index'
  end
#  get 'users/index'
#  get 'users/new'

#  get 'users/create'

#  get 'users/show'
  get '/signin', to: "sessions#new"
  post '/signin', to: "sessions#create"
  root 'demopages#home'
  resources :users  
  resources :topics do   
    resources :scriptures  
  end 
  get 'tags/:tag', to: 'topics#index', as: :tag
  
 
  		match 'about', to: 'demopages#about', as: 'about', via: 'get'
  		match 'contact-us', to: 'demopages#contact', as: 'contact-us', via: 'get'
  		match 'resources', to: 'demopages#resources', as: 'resources', via: 'get'
  		match 'livestreaming', to: 'demopages#livestream', as: 'livestream', via: 'get'
  		match 'ministries', to: 'demopages#ministries', as: 'ministries', via: 'get'
  		match 'events', to: 'demopages#events', as: 'events', via: 'get'
  		match 'donate', to: 'demopages#donate', as: 'donate', via: 'get'
  		match 'library', to: 'demopages#library', as: 'library', via: 'get'
  		match 'legal', to: 'demopages#legal', as: 'legal', via: 'get'

 resources :demopages do
  	collection do
  	end
  end

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
