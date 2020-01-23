Rails.application.routes.draw do
  resources :cuisines, only: [:index, :show]
  resources :dishes
  resources :meals, only: [:index, :show]
  resources :users
    
  root "cuisines#index"
  get '/signup', to:"users#new", as: "signup"
  get '/login', to: "auth#login", as: "login" #auth#new
  post '/login', to: "auth#authenticate"  #auth#create
  get '/logout', to: "auth#logout" 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
