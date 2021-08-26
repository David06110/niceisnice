Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'dashboards#home'
  resources :cashbacks, only: %i[new create]
  resource :dashboard, only: %i[show home]
  devise_for :users
end
