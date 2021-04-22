Rails.application.routes.draw do
  get 'static/welcome'
  resources :cars
  root 'static#welcome'
  
end
