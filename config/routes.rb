Rails.application.routes.draw do
  get '/home', to: 'home#index', as: 'home'  # <-- Aggiunta la virgola corretta
  root 'home#index'
end
