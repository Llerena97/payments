Rails.application.routes.draw do
  root 'charges#index'
  resources :charges, only: [:new, :create]
  get "payu/response", to: "payu#result"
  get "payu/confirmation", to: "payu#confirmation"
end
