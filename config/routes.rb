Rails.application.routes.draw do
  root 'items#index'
  get 'items',  to:  'items#index'
  get 'items/new', to: 'items#new'
  post 'items', to: 'items#create'
end
