Rails.application.routes.draw do

  root '/' => 'videos#index'

  get '/videos' => 'videos#index'
  get '/videos/new' => 'videos#new', as: 'new_video'
  post '/videos' => 'videos#create'
  get '/videos/:id' => 'videos#show', as: 'video'
  get '/videos/:id/edit' => 'videos#edit', as: 'edit_video'
  put '/videos/:id' => 'videos#update'
  delete '/videos/:id/delete' => 'videos#delete'

  get '/youtubers' => 'youtubers#index'
  get '/youtubers/new' => 'youtubers#new', as: 'new_youtuber'
  post '/youtubers' => 'youtubers#create'
  get '/youtubers/:id' => 'youtubers#show', as: 'youtuber'
  get '/youtubers/:id/edit' => 'youtubers#edit', as: 'edit_youtuber'
  put '/youtubers/:id' => 'youtubers#update'
  delete '/youtubers/:id/delete' => 'youtubers#delete'

  get '/subscribers' => 'subscribers#index'
  get '/subscribers/new' => 'subscribers#new', as: 'new_subscriber'
  post '/subscribers' => 'subscribers#create'
  get '/subscribers/:id' => 'subscribers#show', as: 'subscriber'
  get '/subscribers/:id/edit' => 'subscribers#edit', as: 'edit_subscriber'
  put '/subscribers/:id' => 'subscribers#update'
  delete '/subscribers/:id/delete' => 'subscribers#delete'

  resources :videos

  resources :youtubers

  resources :subscribers

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
