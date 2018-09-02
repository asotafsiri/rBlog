Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  get 'about/index'
  namespace :admin do
    get 'sessions/new'
    get 'sessions/create'
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
