Rails.application.routes.draw do
  resources :delivery_items
  resources :deliveries
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
