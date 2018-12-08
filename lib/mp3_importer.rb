require'pry'
class MP3Importer
  attr_accessor :path
  @@all_songs = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(path).each do |file| 
      @@all_songs << file
    end 
    @@all_songs = @@all_songs[1..-2]
    #binding.pry
  end 
  
  def import 
    Song.new_by_filename(some_filename)
  end 
end