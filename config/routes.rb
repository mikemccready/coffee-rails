Rails.application.routes.draw do
  resources :coffee_makers
  resources :coffee_pods
  root 'product#index'
end
