Rails.application.routes.draw do
  resources :users do
    resources :appointments
  end  
  resources :cities
  resources :countries
  resources :sellers
  resources :cars
  post 'authenticate', to: 'authentication#authenticate'
end
