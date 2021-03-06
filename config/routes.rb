Rails.application.routes.draw do
  resources :products

  resource :cart, only: [:show] do 
  	post :add, path: "add/:id"
  	get :checkout
  end

  resources :orders, only: [ :index, :show, :create ]

  devise_for :users
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
