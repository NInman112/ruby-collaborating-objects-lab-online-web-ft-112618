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
  end
  
  def self.all
    @@all
    #binding.pry
  end 
  
  def self.find_or_create_by_name(name)
    if @@all.map {|a| a.name }.include?(name)
      @@all.find {|a| a.name == name}
    else
      artist = self.new(name)
      artist.save[-1]
    end
    
      # if self.all.find do |data| 
      #   data.name == name 
      #   #binding.pry
      #   end
      # else
      #   name = self.new(name)
      # end 
  end 
  
  def print_songs
     songs.each {|x| puts x.name}
  end 
end  