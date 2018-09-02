Rails.application.routes.draw do
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
