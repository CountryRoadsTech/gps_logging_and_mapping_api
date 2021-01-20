# == Route Map
#

Rails.application.routes.draw do

  resources :points
  resources :routes

  # Adds RESTful routes for user authentication.
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks'
  }
end
