Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/bienvenida", to: "home#index"

  root to: "home#index"
  resources :categories
  resources :boards do
    get "user/:user_id", to: "boards#from_author", on: :collection
  end

  # get "boards", to: "boards#index", as: :index
  # get 'boards/new', to: 'boards#new', as: :new_boards
  # get 'boards/:id', to: 'boards#show'
  # get 'boards/:id/edit', to: 'boards#edit'

  # patch  'boards/:id', to: 'boards#update', as: :board
  # post 'boards', to: 'boards#create'
  # delete "boards/:id", to: "boards#destroy"
end
