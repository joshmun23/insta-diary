Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :homes, only: [:index]
  resources :searches, only: [:new]
  resources :users do
    resources :plans, only: [:new]
  end
end
