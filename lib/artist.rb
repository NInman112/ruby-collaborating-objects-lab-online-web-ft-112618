require"pry"

class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    #binding.pry
    @songs << song 
  end 
  
  def save 
    @@all << self
  end
end  