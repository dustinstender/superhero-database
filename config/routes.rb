Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'superhero', to: 'superheros#search'
  resources :superheros, only: [:index, :create]
end
