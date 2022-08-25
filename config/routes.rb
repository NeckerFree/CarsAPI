Rails.application.routes.draw do
  resources :selections
  resources :users do
    resources :appointments
    resources :selections
  end  
  resources :cities
  resources :countries
  resources :sellers
  resources :cars
  post 'useremail', to: 'users#useremail'
  post 'authenticate', to: 'authentication#authenticate'
end

