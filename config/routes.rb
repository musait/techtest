Rails.application.routes.draw do
  resources :delivery_items
  resources :deliveries do
    resources :items, only: [:index, :show]
  end
  resources :items
  match '*any' => 'application#options', :via => [:options]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
