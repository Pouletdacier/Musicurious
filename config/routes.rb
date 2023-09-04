Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/map', to: 'pages#map', as: 'map'
  get '/quizz', to: 'pages#quizz', as: 'quizz'

  get 'serve_avatar', to: 'home#serve_avatar', as: :serve_avatar


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

  get 'search_instruments', to: 'instruments#search', as: 'search_instruments'


end
