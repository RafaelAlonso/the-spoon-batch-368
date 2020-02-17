Rails.application.routes.draw do

  # VERB PATH, to: 'CONTROLLER#ACTION'
  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'

  get '/restaurants', to: 'restaurants#index'
  post '/restaurants', to: 'restaurants#create'
  get '/restaurants/:banana', to: 'restaurants#show', as: :restaurant

  root to: 'pages#home'
end
