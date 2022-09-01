Rails.application.routes.draw do
  resources :stocks
  root 'pages#home'
  devise_for :traders
  resources :traders
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
