Rails.application.routes.draw do
  devise_for :users
  resources :passwords
  resources :knowledges
  root to:"welcome#index"
end
