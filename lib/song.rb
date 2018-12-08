require"pry"

class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end 
  
  def self.new_by_filename(song)
    parsed = song.split(" - ")
    name = Song.new(parsed[1])
    name.artist = Artist.find_or_create_by_name(parsed[0])
    #binding.pry
  end 
end