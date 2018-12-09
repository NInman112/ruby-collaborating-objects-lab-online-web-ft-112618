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
      if self.all.find do |data| 
        data.name == name 
        #binding.pry
        end
      else
        #binding.pry
        name = self.new(name)
        name.save
      
      end 
  end 
  
  def print_songs
     songs.each {|x| puts x.name}
  end 
end  