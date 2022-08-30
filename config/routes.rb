Rails.application.routes.draw do
  resources :users do
    resources :appointments
    resources :selections
    resources :cars
  end  

  resources :countries do
    resources :cities
  end
  resources :sellers
  post 'useremail', to: 'users#useremail'
  post 'authenticate', to: 'authentication#authenticate'
end

