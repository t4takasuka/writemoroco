Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts do
    resources :comments, only: :create
    collection do
      get "search"
    end
  end
  resources :users, only: [:show]

  resources :photo, only: [:index, :new, :create]
  resources :images, only: [:index, :new, :create]
end
