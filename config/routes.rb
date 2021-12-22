Rails.application.routes.draw do
  devise_for :users

  resources :products, only: %i[index show] do
    resources :bids, only: %i[create]
  end

  root "products#index"
end
