Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :instruments
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'instruments#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
