Rails.application.routes.draw do
  resources :clothings
  resources :closets
  resources :outfit_clothings
  resources :outfits
  resources :models
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
