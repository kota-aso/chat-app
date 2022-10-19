Rails.application.routes.draw do
  get 'usersrails/g'
  get 'usersrails/model'
  get 'usersrails/room'
  devise_for :users
  root to: "messages#index"
  resources :users, only: [:edit, :update]
end