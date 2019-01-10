require 'rspotify'

RSpotify.authenticate("56de3a554c184ab39a7e07f135242f48", "db998885dfc24f908abfa45ecc1aaeeb")

artists = RSpotify::Artist.search('Nobuhiro Takahashi')

artist = artists.first
p artist.name
p artist.popularity

albums = artist.albums
album = albums.first
p album.name
p album.release_date
p album.images

tracks = album.tracks
track = tracks.first
p track.name
p track.duration_ms
p track.track_number
p track.preview_url