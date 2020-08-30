Rails.application.routes.draw do
  devise_for :users
  root 'shift#index'

  resources :shift, only: [:show, :new] do
  end
end
