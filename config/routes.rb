Rails.application.routes.draw do
  resources :members, only: [:index, :show, :create, :update, :destroy]
  resources :sessions, only: [:index, :show, :create, :update, :destroy]
  resources :attendances, only: [:index, :show, :create]
end
