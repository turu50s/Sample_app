Rails.application.routes.draw do
  # get 'password_resets/new'

  # get 'password_resets/edit'

  # get 'sessions/new'  <- rails generate controllerで生成された

  # root 'application#hello'
  root 'static_pages#home'
  # get 'static_pages/home'

  # get 'static_pages/help'
  get  '/help', to: 'static_pages#help'
  # get 'static_pages/about'
  get  '/about', to: 'static_pages#about'
  # get 'static_pages/contact'
  get  '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  '/signup', to:'users#new'
  post '/signup', to: 'users#create'

  # Sessions Resources
  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # relationship
  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
end
