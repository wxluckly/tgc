Rails.application.routes.draw do
  devise_for :staffers

  root 'welcome#index'

  resources :contacts, only: [:create]

  namespace :admin do 
    root 'home#index'
    resources :contacts
  end
end
