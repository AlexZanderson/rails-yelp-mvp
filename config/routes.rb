Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [:edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  # Defines the root path route ("/")
  # root "articles#index"
  end
end
