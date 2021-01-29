# frozen_string_literal: true

Rails.application.routes.draw do
  get "legal/index"
  
  resources :market_places
  root 'home#index'
  get 'main/dashboard'
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]
  

  resources :users, only: [:create, :show, :edit, :update, :destroy] do
    resource :password,
      controller: 'clearance/passwords',
      only: [:create, :edit, :update]
  end

  get '/sign_in' => 'clearance/sessions#new', as: 'sign_in'
  delete '/sign_out' => 'clearance/sessions#destroy', as: 'sign_out'
  get '/sign_up' => 'clearance/users#new', as: 'sign_up'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :home
end
