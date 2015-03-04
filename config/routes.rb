Rails.application.routes.draw do

  devise_for :users
  resources :dogs

  root 'dogs#index'
end
