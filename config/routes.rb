Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root "devise/sessions#new"
  end

  resources :shifts, only: [:index, :show, :new, :create, :destroy, :edit, :update] do
  end
  
  resources :user, only: [:show, :edit, :update]do
    resources :shifts
  end
  
end
