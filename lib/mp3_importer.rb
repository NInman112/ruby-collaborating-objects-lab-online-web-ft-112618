require'pry'
class MP3Importer
  attr_accessor :path
  @@all_songs = []
  
  def initialize(path)
    @path = path << "/*.mp3"
  end
  
  def files
    Dir[path].each do |file| data = file.chomp('.mp3')
    @@all_songs << data
    # Dir.entries(path).map do |file| data = file.split(' - ')
    # data[0]                          #artist
    # data[1]                          #song
    # data[2]                          #genre
    binding.pry
    end 
    
  end 
  
  def import 
    Song.new_by_filename(some_filename)
  end 
end