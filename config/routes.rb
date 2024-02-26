Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/edit'
  devise_for :users
  resources :tasks
  root "tasks#index"
end
