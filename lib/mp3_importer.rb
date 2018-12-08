require'pry'
class MP3Importer
  attr_accessor :path
  @@all_songs = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(path).select 
    do |f| File.file?(binding.pry
        data = f.chomp('.mp3')
        @@all_songs << data) 
        
      
    # Dir.entries(path).map do |file| data = file.split(' - ')
    # data[0]                          #artist
    # data[1]                          #song
    # data[2]                          #genre
    
    end 
    #binding.pry
  end 
  
  def import 
    Song.new_by_filename(some_filename)
  end 
end