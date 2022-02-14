Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/bienvenida", to: "home#index"
  get 'boards/new', to: 'boards#new'
  get 'boards/:id', to: 'boards#show'

  post 'boards', to: 'boards#create'
end
