Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'prescriptions#index'

  get 'sessions/new'
  post 'sessions/create'
  delete 'sessions/destroy'

  get 'users/new'
  post 'users/create'
end
