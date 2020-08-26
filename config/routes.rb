Rails.application.routes.draw do
  root 'shift#index'

  resources :shift, only: [:show] do
  end
end
