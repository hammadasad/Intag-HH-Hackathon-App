Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'prescriptions#index'

  resources :sessions
  delete '/sessions', to: 'sessions#destroy'
  resources :users
  resources :prescriptions
  get '/prescriptions/view/:id', to: 'prescriptions#display'
end
