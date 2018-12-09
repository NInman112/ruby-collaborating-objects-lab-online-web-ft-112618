require"pry"

class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end 
  
  def self.new_by_filename(song)
    parsed = song.split(" - ")
    name = self.new(parsed[1])
    artist = Artist.find_or_create_by_name(parsed[0])
    name.artist = artist
    artist.songs << name
  end 
end