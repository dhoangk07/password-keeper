Rails.application.routes.draw do
  devise_for :users
  resources :passwords
  root to:"welcome#index"
end
