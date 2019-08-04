Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'static_pages#home'
  get '/about'=>'static_pages#about'

    devise_for :users, controllers: {
    registrations: 'users/registrations',

    sessions: "users/sessions",
    omniauth_callbacks: "users/omniauth_callbacks",
    
  }
resources :users, :only => [:show]
resources :tours, :only => [:index,:new,:create,:show,
                            :edit,:update,:destroy]
resources :likes, :only => [:create,:destroy]
resources :tours do
resources :comments, :only => [:create,:destroy]
end
resources :relationships, only: [:create, :destroy]
resources :favorites, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
