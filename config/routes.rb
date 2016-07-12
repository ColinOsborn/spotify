Rails.application.routes.draw do

  root 'homepage#show'

  get '/auth/spotify', as: :spotify_login
  get '/callback', to: "sessions#create"
end
