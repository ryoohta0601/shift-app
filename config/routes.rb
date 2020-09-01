Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root "devise/sessions#new"
  end

  resources :shift, only: [:index, :show, :new] do
  end

  post 'shift', to: 'shift#create'
end
