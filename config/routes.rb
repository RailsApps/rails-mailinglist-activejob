Rails.application.routes.draw do
  resources :visitors, only: [:new, :create]
  root to: 'visitors#new'
end
