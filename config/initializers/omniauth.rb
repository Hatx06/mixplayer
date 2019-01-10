# config/initializers/omniauth.rb

require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "<56de3a554c184ab39a7e07f135242f48 >", "<db998885dfc24f908abfa45ecc1aaeeb>", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end