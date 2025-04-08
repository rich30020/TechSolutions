Rails.application.routes.draw do
  get '/home', to: 'home#index', as: 'home'
  root 'home#index'
  get 'contatti', to: 'home#contatti', as: 'contatti'

  get 'vpn', to: 'home#vpn', as: 'vpn'
  get 'prezzi', to: 'home#prezzi', as: 'prezzi'
  get 'server', to: 'home#server', as: 'server'
  get 'supporto', to: 'home#supporto', as: 'supporto'


  get 'track/:section', to: 'home#track', as: 'track_section'
end
