Rails.application.routes.draw do
  
  root 'tweets#index'

  resources 'tweets'
  # get 'tweets/new'

  # post 'tweets/create', to: 'tweets#create' 
  #   #{:to => 'tweets#create'}
  #   #'tweets' => tweets#create

  # get 'tweets/:id/edit' => 'tweets#edit'

  # put 'tweets/:id' => 'tweets#update'

  # delete 'tweets/:id' => 'tweets#destory'

  get 'tweets/show'

  resources :blogs
  
  get 'post/index'
  
  #### Post
  
  get 'post/index'

  get 'post/new'
  post 'post/create'

  get 'post/show/:id' => 'post#show'
  
  get 'post/modify/:id' => 'post#modify'
  get 'post/update/:id' => 'post#update'
  
  get 'post/destory/:id' => 'post#destory'
  
  post 'post/create_comment'
  
  #### User
  
  get 'user/index'

  get 'user/new'
  post 'user/create'

  get 'user/show/:id' => 'user#show'

  get 'user/login'
  post 'user/login_process'
  get 'user/logout'

  get 'user/note'
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
