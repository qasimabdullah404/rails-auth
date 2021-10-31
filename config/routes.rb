Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users

  scope '/admin' do
    resources :users
  end

  authenticated :user do
    root to: 'items#index', as: :authenticated_root
  end

  root to: 'welcome#index'

  resources :items
  resources :users
  resources :roles
end
