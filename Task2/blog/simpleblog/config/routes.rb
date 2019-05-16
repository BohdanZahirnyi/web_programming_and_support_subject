Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  get    "users",     to: "users#index"
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  match 'users/to_admin/:id' => 'users#to_admin', via: [:get, :post],  :as => :to_admin
  match 'users/to_user/:id' => 'users#to_user', via: [:get, :post],  :as => :to_user
  match 'users/to_moderator/:id' => 'users#to_moderator', via: [:get, :post],  :as => :to_moderator

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  resources :posts do
    resources :comments
  end

end
