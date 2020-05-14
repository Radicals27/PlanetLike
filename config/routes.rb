Rails.application.routes.draw do
  get 'nav/home'
  get 'nav/about'
  get 'nav/contact'
  devise_for :users
  resources :profiles
  resources :searches
  root to: "profiles#index"
end
