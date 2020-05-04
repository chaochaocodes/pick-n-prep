Rails.application.routes.draw do
  resources :recipes
  resources :ingredients
  resources :directions
  resources :cuisines, only: [:index, :show]
  resources :meals, only: [:index, :show]
  
  # root "meals#index"
  root "auth#landing"
  # get '/landing', to: "auth#landing", as: "landing"
  get '/signup', to: "users#new", as: "signup"
  get '/login', to: "auth#login", as: "login" #auth#new
  post '/login', to: "auth#authenticate"  #auth#create
  get '/logout', to: "auth#logout" 
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
