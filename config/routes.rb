Rails.application.routes.draw do
  
  root 'demopages#home'
  
  resources :topics   
  
  resources :demopages do
  	collection do
  		match 'about', to: 'demopages#about', as: 'about', via: 'get'
  		match 'contact', to: 'demopages#contact', as: 'contact', via: 'get'
  		match 'resources', to: 'demopages#resources', as: 'resources', via: 'get'
  		match 'livestreaming', to: 'demopages#livestream', as: 'livestream', via: 'get'
  		match 'ministries', to: 'demopages#ministries', as: 'ministries', via: 'get'
  		match 'events', to: 'demopages#events', as: 'events', via: 'get'
  		match 'donate', to: 'demopages#donate', as: 'donate', via: 'get'
  		match 'library', to: 'demopages#library', as: 'library', via: 'get'
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
