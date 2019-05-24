class Preference < ActiveRecord::Base

  def artist_sort_order
    artists = Artist.order(name: :desc)
    artists.map do |artist|
      artist.name
    end.join(" ")
  end

  def song_sort_order
    songs = Song.order(title: :asc)
    songs.map do |song|
      song.title
    end.join(" ")
  end

  def allow_create_artists
    false
  end

  def allow_create_songs
    true
  end

end
