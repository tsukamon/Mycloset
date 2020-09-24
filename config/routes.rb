Rails.application.routes.draw do
  root to: "items#index"
  devise_for :users
  resources :items, only: [:new, :edit, :destroy, :create, :update, :show]
  get 'search', to: 'items#search'
end
