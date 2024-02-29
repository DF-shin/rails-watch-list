Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %w[create new show destroy] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
