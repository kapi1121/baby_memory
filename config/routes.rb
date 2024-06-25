Rails.application.routes.draw do
  get 'babies/index'
  root to: "babies#index"
end
