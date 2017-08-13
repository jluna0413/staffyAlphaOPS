Rails.application.routes.draw do
  devise_for :talents
  devise_for :clients
  root to: "home#index"

  resources :talents
  resources :bookings
  resources :jobs
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
