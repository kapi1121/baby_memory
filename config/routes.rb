Rails.application.routes.draw do
  devise_for :users
  get 'babies/index'
  root to: "babies#index"
  resources :babies
end
