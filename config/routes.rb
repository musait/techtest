Rails.application.routes.draw do
  resources :delivery_items

  resources :deliveries
  get '/deliveries/:id/items', to: 'deliveries#delivery_item'
  resources :items
  resources :order_picker,only: [:index] do
    resources :deliveries, only: [:show]
  end
  match '*any' => 'application#options', :via => [:options]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
