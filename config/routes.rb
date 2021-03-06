Rails.application.routes.draw do

  root 'homepage#show'

  get '/auth/spotify', as: :spotify_login
  get "/auth/spotify/callback", to: "sessions#create"
  delete "/logout",             to: "sessions#destroy"

  resources :artists, only: [:index, :show]
  resources :playlists
end
