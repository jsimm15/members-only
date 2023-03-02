Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "users#index"

  resources :users do
    resources :posts, only: [:new, :create, :index]
  end

  get "posts", to: "posts#index"

end
