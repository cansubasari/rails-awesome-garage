Rails.application.routes.draw do
  get 'pages/home'
  get 'favourites/index'
  get 'favourites/create'
  get 'favourites/destroy'
  get 'cars/index'
  get 'cars/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :favourites, only: [:index, :create, :destroy]

  resources :cars, only: [:index, :show] do
    resources :reviews, only: [:create]
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
