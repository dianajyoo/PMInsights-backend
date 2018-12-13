Rails.application.routes.draw do
  resources :heartrates
  resources :sleepcycles
  resources :sleeplogs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
