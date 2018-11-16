Rails.application.routes.draw do
  root 'home#index'
  devise_for :drivers, path: 'drivers', controllers: { sessions: "drivers/sessions",
                                                       confirmations: "drivers/confirmations",
                                                       passwords: "drivers/passwords",
                                                       registrations: "drivers/registrations",
                                                       unlocks: "drivers/unlocks" }

  devise_for :clients, path: 'clients', controllers: { sessions: "clients/sessions",
                                                       confirmations: "clients/confirmations",
                                                       passwords: "clients/passwords",
                                                       registrations: "clients/registrations",
                                                       unlocks: "clients/unlocks" }

  devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions",
                                                     confirmations: "admins/confirmations",
                                                     passwords: "admins/passwords",
                                                     registrations: "admins/registrations",
                                                     unlocks: "admins/unlocks" }
  resources :admins
  resources :drivers
  resources :clients
  resources :trips


  get 'home/admin', to: 'home#admin'
  get 'home/client', to: 'home#client'
  get 'home/driver', to: 'home#driver'
  get 'home/map', to: 'home#map'

  get 'find_trips', to: 'trips#find_trips'

  match 'find_trips/:id/accept_trip', to: 'trips#accept_trip', as: 'accept_trip', via: :patch
  match 'find_trips/:id/end_trip', to: 'trips#end_trip', as: 'end_trip', via: :patch
  
end
