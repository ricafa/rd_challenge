Rails.application.routes.draw do
  resources :managements
  resources :currencies
  resources :companies
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
