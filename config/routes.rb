Rails.application.routes.draw do
  get 'about/index'

  get 'support' =>'support#index'

  get 'about' => 'about#index'

  get 'admin' => 'admin/tours#index'

  namespace :admin do
    get 'sessions/new'
  end

  namespace :admin do
    get 'sessions/create'
  end

  namespace :admin do
    get 'users/new'
  end

  namespace :admin do
    get 'users/create'
  end

  namespace :admin do
    get 'users/edit'
  end

  namespace :admin do
    get 'users/update'
  end

  namespace :admin do
    get 'users/destroy'
  end

  namespace :admin do
    get 'users/index'
  end

  namespace :admin do
    get 'users/show'
  end

  namespace :admin do
    get 'comments/destroy'
  end

  get 'comments/new'

  namespace :admin do
    get 'blogcategories/new'
  end

  namespace :admin do
    get 'blogcategories/create'
  end

  namespace :admin do
    get 'blogcategories/edit'
  end

  namespace :admin do
    get 'blogcategories/update'
  end

  namespace :admin do
    get 'blogcategories/destroy'
  end

  namespace :admin do
    get 'blogcategories/index'
  end

  namespace :admin do
    get 'blogcategories/show'
  end

  namespace :admin do
    get 'tourcategories/new'
  end

  namespace :admin do
    get 'tourcategories/create'
  end

  namespace :admin do
    get 'tourcategories/edit'
  end

  namespace :admin do
    get 'tourcategories/update'
  end

  namespace :admin do
    get 'tourcategories/destroy'
  end

  namespace :admin do
    get 'tourcategories/index'
  end

  namespace :admin do
    get 'tourcategories/show'
  end

  get 'blogcategories/show'

  get 'tourcategories/show'

  namespace :admin do
    get 'blogs/new'
  end

  namespace :admin do
    get 'blogs/create'
  end

  namespace :admin do
    get 'blogs/edit'
  end

  namespace :admin do
    get 'blogs/update'
  end

  namespace :admin do
    get 'blogs/destroy'
  end

  namespace :admin do
    get 'blogs/index'
  end

  namespace :admin do
    get 'blogs/show'
  end

  namespace :admin do
    get 'tours/new'
  end

  namespace :admin do
    get 'tours/create'
  end

  namespace :admin do
    get 'tours/edit'
  end

  namespace :admin do
    get 'tours/update'
  end

  namespace :admin do
    get 'tours/destroy'
  end

  namespace :admin do
    get 'tours/index'
  end

  namespace :admin do
    get 'tours/show'
  end

  get 'blogs/index'

  get 'blogs/show'

  get 'tours/index'

  get 'tours/show'

  resources :tours, :blogs , :tourcategories, :blogcategories, :comments

  namespace :admin do
    resources :tours, :blogs , :tourcategories, :blogcategories, :comments, :users
  end

  root 'tours#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
