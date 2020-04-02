Rails.application.routes.draw do
  root to: "artists#index"

  get "about", to: "application#about"
  get "songs/new", to: "songs#new"
  post "songs", to: "songs#create"
  get "artists", to: "artists#index"
  get "artists/new", to: "artists#new"
  post "artists", to: "artists#create"
  get "artists/:id/edit", to: "artists#edit", as: :artist_edit
  patch "artists/:id", to: "artists#update"
  delete "artists/:id", to: "artists#destroy"
  get "artists/:id", to: "artists#show", as: :artist

  resources :artists, :songs
  get "bootstrap", to: "artists#bootstrap"

end
