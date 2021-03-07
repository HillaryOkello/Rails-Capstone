Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:new, :show, :create]
  resources :sessions, only:[:new, :create, :destroy]
  scope :sessions do
    get 'signup', to: 'users#new'
    get 'login', to: 'sessions#new', as: 'login'
    get 'signout', to: 'sessions#destroy'
  end

  root 'users#index'
end
