Rails.application.routes.draw do
  get 'hashtags/show'

  #get 'newprojects/index'

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

resources :users do
  resources :newprojects 
  end


resources :users
resources :communities
resources :teams
resources :projects

get 'newprojects/publicproject'
get 'newprojects/privateproject'
get 'newprojects/team'
get 'newprojects/individual'
get 'newprojects/testingAPI'

  # You can have the root of your site routed with "root"

resources :communities, only: [:index]
resources :teams, only: [:index]
resources :projects, only: [:index]
resources :educations, only: [:index]
resources :businesses, only: [:index]
resources :securities, only: [:index]
resources :healths, only: [:index]
resources :arts, only: [:index]
resources :poverties, only: [:index]

 # You can have the root of your site routed with "root"

   root 'users#index'

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
