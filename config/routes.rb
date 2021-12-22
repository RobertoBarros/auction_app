Rails.application.routes.draw do
  devise_for :users

  resources :products, only: %i[index show]

  root "products#index"
end
