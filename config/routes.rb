Rails.application.routes.draw do
  resources :activities
  resources :trips
  devise_for :users
  get 'pages/index'
  root 'pages#index'
  get 'pages/contacto'
  get 'pages/noticias'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
