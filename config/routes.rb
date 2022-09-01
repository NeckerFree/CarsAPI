Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
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

