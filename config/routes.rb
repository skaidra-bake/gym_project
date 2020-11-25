Rails.application.routes.draw do
  resources :transactions
  resources :merchandises
  resources :one_day_passes
  resources :pass_categories
  resources :memberships
  resources :members
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
