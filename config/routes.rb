Rails.application.routes.draw do
  get 'contact' => 'contacts#new'
  get 'contacts/create'
  get 'about' => 'about#index'
  namespace :admin do
    get "login" => "sessions#new", :as => "login"
    get 'sessions/create'
  end
  namespace :admin do
    get "logout" => "sessions#destroy", :as => "logout"
  end
  namespace :admin do
    get 'users/index'
    get 'users/show'
    get 'users/new'
    get 'users/edit'
    get 'users/create'
    get 'users/update'
    get 'users/destroy'
  end
  namespace :admin do
    get 'comments/destroy'
  end
  get 'comments/new'
  namespace :admin do
    get 'categories/index'
    get 'categories/show'
    get 'categories/new'
    get 'categories/edit'
    get 'categories/create'
    get 'categories/update'
    get 'categories/destroy'
  end
  get 'categories/show'
  namespace :admin do
    get 'posts/index'
    get 'posts/show'
    get 'posts/new'
    get 'posts/edit'
    get 'posts/create'
    get 'posts/update'
    get 'posts/destroy'
  end
  get 'posts/index'
  get 'posts/show'
  resources :posts, :categories, :comments
  resources "contacts", only: [:new, :create]
  namespace :admin do
    resources :posts, :categories, :comments, :users, :sessions
  end
  resources :posts do
    resources :comments
  end
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
