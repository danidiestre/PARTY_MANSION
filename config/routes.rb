Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: 'pages#dashboard'
  resources :mansions do
    resources :bookings, only: [:create]

  end
  resources :bookings, only: [:create] do
    resources :reviews, only: [:new, :create]
    member do
      post :accepted
      post :rejected
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
