Rails.application.routes.draw do
  devise_for :staffers

  root 'welcome#index'

  namespace :admin do 
    root 'home#index'
  end
end
