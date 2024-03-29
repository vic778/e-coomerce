Rails.application.routes.draw do
  resources :agendas
  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  resources :line_items
  resources :carts
  resources :instruments

  root to: 'instruments#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
