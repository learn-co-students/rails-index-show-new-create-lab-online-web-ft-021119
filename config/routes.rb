Rails.application.routes.draw do
  resources :coupons, only: [:index, :create, :new] # :update
  get '/coupons/:id', to: 'coupons#show', as: 'coupon'
end
