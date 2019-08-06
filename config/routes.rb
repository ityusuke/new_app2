Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'static_pages#home'
  get '/about'=>'static_pages#about'
  get '/search'=>'static_pages#search'


  devise_for :users, controllers: {
  registrations: 'users/registrations',
  sessions: "users/sessions",
  omniauth_callbacks: "users/omniauth_callbacks"
  }
  resources :users, :only => [:show,:follow]
  resources :tours, :only => [:index,:new,:create,:show,
                              :edit,:update,:destroy]
  resources :relationships, only: [:create, :destroy]

 resources :users do
    member do
      get :followings, :followers,:favorite
    end
  end
  resources :tours do
  resources :likes, :only => [:create,:destroy]
  resources :favorites, only: [:create, :destroy]
  resources :comments, :only => [:create,:destroy]
  end

end
