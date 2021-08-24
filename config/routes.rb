Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'dashboards#home'
  resources :caschbacks, only: %i[new create]
  resources :dashboards, only: %i[show home]
  devise_for :users
end
