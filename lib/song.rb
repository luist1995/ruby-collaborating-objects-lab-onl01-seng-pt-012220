class Song 
  
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.new_by_filename(file)
    name = fiel.split(" - ")
    new_song = Song.new(name[1])
  end
  
  def self.all
    @@all 
  end
  
end