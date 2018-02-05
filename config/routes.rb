Rails.application.routes.draw do
  resources :managements
  resources :currencies
  resources :companies
  resources :products
  resources :productsprices
  namespace :api do
  	namespace :v1 do
  		resources :managements
		  resources :currencies
		  resources :companies
		  resources :products
		end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
