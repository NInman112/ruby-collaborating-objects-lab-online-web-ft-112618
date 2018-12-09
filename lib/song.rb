require"pry"

class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end 
  
  def self.new_by_filename(file_name)
    parsed = file_name.split(" - ")
    song = parsed[1]
    artist = parsed[0]
    
    new_song = self.new(song)
    song.artist = Artist.find_or_create_by_name(artist)
    song
    #binding.pry
  end 
end