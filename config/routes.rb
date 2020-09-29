Rails.application.routes.draw do
  root to: "items#index"
  get 'search', to: 'items#search'
  devise_for :users
  resources :items
  resources :categories, expect: [:show]
end
