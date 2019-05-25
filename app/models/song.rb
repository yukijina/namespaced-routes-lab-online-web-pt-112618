class Song < ActiveRecord::Base
  belongs_to :artist, optional: true
  # add optional:true here
  # *or* in config/application.rb file, add Rails.application.config.active_record.belongs_to_required_by_default = false


  def artist_name
    self.try(:artist).try(:name)
    #=> @song && @song.artist.name
    #=> @song ? @song.artist.name : nil
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
      self.artist = artist
  end

end
