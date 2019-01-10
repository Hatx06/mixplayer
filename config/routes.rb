Rails.application.routes.draw do
  get "/" => "home#top"
  get 'signup' => "users#new"
  get 'places' => "places#playlist"
  get "about" => "home#about"
  get "places/:id" => "places#content"
  post "users/create" => "users#create"
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  post "places/:id/create" => "places#create"
  get "auth/spotify/callback" => "users#spotify"
  
  
  get 'places/:id/artists', to: 'places#index'
  get 'places/:id/artists/:id', to:'places#show', as: 'artist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
