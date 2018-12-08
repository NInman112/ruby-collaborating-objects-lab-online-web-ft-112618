require"pry"

class Song 
  attr_accessor :name, :artist, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    
  end 
  
  def add_song(song)
    @song << song
    song.artist = self
  end 
  
  def self.new_by_filename(file)
    parsed = file.split(" - ")
    song = self.new(parsed[1])
    song.artist = self.find_or_create_by_name(parsed[0])
    #binding.pry
  end 
  
  
  
end