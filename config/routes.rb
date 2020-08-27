Rails.application.routes.draw do
  root 'shift#index'

  resources :shift, only: [:show, :new] do
  end
end
