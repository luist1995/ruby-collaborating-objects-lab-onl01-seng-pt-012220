class MP3Importer
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @artist = artist
  end
  
  def self.all
    @@all 
  end
  
end