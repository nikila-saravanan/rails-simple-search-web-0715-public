Rails.application.routes.draw do

  resources :words
  resources :search

  root 'welcome#index'

end
