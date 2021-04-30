Rails.application.routes.draw do
  resources :cars do
    member do
      put "/like" => "cars#like"
    end
  end

  get 'static/welcome'
  resources :cars
  root 'static#welcome'
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
