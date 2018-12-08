class Artist 
  attr_accessor :name
  
  def initialize(name)
    @name = name

  end 
  

  def add_song(song)
    @song << song
    
  end
  
  def save
    
  end
  
  def self.find_or_create_by_name
  
  end
  
  def print_songs
    
  end
end  