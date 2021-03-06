# frozen_string_literal: true

Rails.application.routes.draw do
  resources :market_places
  root 'home#index'
  get 'main/dashboard'
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]
  

  resources :users, only: [:create, :show, :edit, :update] do
    patch :deactivate, on: :member 
    resource :password,
      controller: 'clearance/passwords',
      only: [:create, :edit, :update]
  end

  get 'my-account', to: 'users#index', as: 'my-account'

  get '/sign_in' => 'clearance/sessions#new', as: 'sign_in'
  delete '/sign_out' => 'clearance/sessions#destroy', as: 'sign_out'
  get '/sign_up' => 'clearance/users#new', as: 'sign_up'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :home

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :market_places, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
