Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/map', to: 'pages#map', as: 'map'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :instruments, only: [:index, :show] do
    resources :favorites, only: :create
    collection do
      get :discovery
    end
  end

  resources :favorites, only: [:index]
end
