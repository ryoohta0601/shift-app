Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root "devise/sessions#new"
  end

  resources :shift, only: [:index, :show, :new, :create] do
  end

  # post 'shift/new' => 'shift#new'
end
