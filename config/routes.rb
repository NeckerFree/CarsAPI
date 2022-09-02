Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :users, only: [:index, :show, :destroy, :create] do
    resources :appointments, only: [:index, :show, :destroy, :create]
    resources :selections, only: [:index, :show, :destroy, :create]
    resources :cars, only: [:index, :show, :destroy, :create]
  end  

  resources :countries, only: [:index, :show, :create] do
    resources :cities, only: [:index, :show, :create]
  end

  resources :sellers, only: [:index, :show, :create]
  
  post 'useremail', to: 'users#useremail'
  post 'authenticate', to: 'authentication#authenticate'
end