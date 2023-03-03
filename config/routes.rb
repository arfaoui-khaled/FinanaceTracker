Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  get "my_portfolio", to: "users#my_portfolio"
  get "search_stocks", to: "stocks#search"
  resources :user_stocks, only: [:create, :destroy]
end
