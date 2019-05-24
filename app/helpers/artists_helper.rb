module ArtistsHelper
  def display_artist(song)
    song.artist.nil? || song.artist.name.empty? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end
end


# link_to "Add Artist", controller: "songs", action: "edit", id: song
