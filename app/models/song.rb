class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.try(:artist).try(:name)
    #=> @song && @song.artist.name
    #=> @song ? @song.artist.name : nil
  end

  def artist_name=(name)
    #if name.empty?
       #render "new"
    #else
      artist = Artist.find_or_create_by(name: name)
      self.artist = artist
    #end
  end

end
