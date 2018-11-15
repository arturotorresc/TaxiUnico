Rails.application.routes.draw do

  root 'home#index'
  
  resources :cars
  resources :trips

  devise_for :drivers, path: 'drivers', controllers: { sessions: "drivers/sessions",
                                                       confirmations: "drivers/confirmations",
                                                       passwords: "drivers/passwords",
                                                       registrations: "drivers/registrations",
                                                       unlocks: "drivers/unlocks" }
  resources :drivers

  devise_for :clients, path: 'clients', controllers: { sessions: "clients/sessions",
                                                       confirmations: "clients/confirmations",
                                                       passwords: "clients/passwords",
                                                       registrations: "clients/registrations",
                                                       unlocks: "clients/unlocks" }
  resources :clients

  devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions",
                                                     confirmations: "admins/confirmations",
                                                     passwords: "admins/passwords",
                                                     registrations: "admins/registrations",
                                                     unlocks: "admins/unlocks" }
  resources :admins


  get 'home/admin', to: 'home#admin'
  get 'home/client', to: 'home#client'
  get 'home/driver', to: 'home#driver'
  get 'home/map', to: 'home#map'

  get 'find_trips', to: 'trips#find_trips'

  match 'find_trips/:id/accept_trip', to: 'trips#accept_trip', as: 'accept_trip', via: :patch
  
end
