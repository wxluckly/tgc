Rails.application.routes.draw do
  devise_for :staffers

  root 'welcome#index'

  resources :contacts, only: [:create]
  namespace :focus do
    get :first
  end

  namespace :admin do 
    root 'home#index'
    resources :contacts
  end
end
