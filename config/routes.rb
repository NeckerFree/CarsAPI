Rails.application.routes.draw do
  resources :users do
    resources :appointments
    resources :selections
    resources :cars
  end  
  resources :cities
  resources :countries
  resources :sellers
  post 'useremail', to: 'users#useremail'
  post 'authenticate', to: 'authentication#authenticate'
end

