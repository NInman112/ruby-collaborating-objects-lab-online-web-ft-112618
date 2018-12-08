require"pry"

class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    @songs << song
  end 
  
  def save 
    @@all << self
    #binding.pry
  end
  
  def self.find_or_create_by_name(name)
    @@all.each do |data| 
      if data.name != name
        #binding.pry
        name = Artist.new(name)
      else 
        data.name == name
      end 
      #binding.pry
    end 
  end 
  
  def print_songs
    puts @@all
  end 
end  