Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  get    "users",     to: "users#index"
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  match 'users/to_admin/:id' => 'users#to_admin', via: [:get, :post],  :as => :to_admin
  match 'users/to_user/:id' => 'users#to_user', via: [:get, :post],  :as => :to_user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  resources :posts

end
