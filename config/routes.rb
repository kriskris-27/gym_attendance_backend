Rails.application.routes.draw do
  resources :members, only: [:index, :show, :create, :update, :destroy], defaults: { format: :json }
  resources :sessions, only: [:index, :show, :create, :update, :destroy], defaults: { format: :json }
  resources :attendances, only: [:index, :show, :create], defaults: { format: :json }
end
