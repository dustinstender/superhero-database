Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :superheros, only: [:index, :create]
end
