Rails.application.routes.draw do
  devise_for :users

  scope '/admin' do
    resources :users
  end

  root to: 'items#index'

  resources :items
  resources :users
  resources :roles
end
