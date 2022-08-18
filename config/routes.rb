Rails.application.routes.draw do
  resources :selections
  resources :cities
  resources :countries
  resources :sellers
  resources :appointments
  resources :cars
  post 'authenticate', to: 'authentication#authenticate'
end
