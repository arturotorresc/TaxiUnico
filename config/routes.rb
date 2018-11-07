Rails.application.routes.draw do
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


  root 'home#index'
  get 'home/admin', to: 'home#admin'
  get 'home/client', to: 'home#client'
  get 'home/driver', to: 'home#driver'
  get 'home/map', to: 'home#map'
end
