Rails.application.routes.draw do
  namespace :admin do
    get 'orders/edit'
  end

  namespace :admin do
    get 'orders/update'
  end

  namespace :admin do
    get 'orders/destroy'
  end

  namespace :admin do
    get 'orders/index'
  end

  namespace :admin do
    get 'orders/show'
  end

  get 'thankyou/index' 

  get 'thankyou' => 'thankyou#index'

  get 'orders/add'

  get 'orders' => 'orders#index'
  get 'orders/index'

  get 'orders/create'

  get 'about/index'

  get 'support' =>'support#index'

  get 'about' => 'about#index'

  get 'admin' => 'admin/tours#index'

  namespace :admin do
    get "login" =>'sessions#new', :as => "login"
  end

  namespace :admin do
    get "logout" =>'sessions#destroy', :as => "logout"
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

  resources :tours, :blogs , :tourcategories, :blogcategories, :comments, :orders

  namespace :admin do
    resources :tours, :blogs , :tourcategories, :blogcategories, :comments, :users , :orders , :sessions
  end

  root 'tours#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
