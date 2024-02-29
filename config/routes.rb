Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %w[create new show destroy]
end
