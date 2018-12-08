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
  
  
  
end