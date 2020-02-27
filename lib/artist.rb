class Artist 
  
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def songs 
   Song.all.find_all do |song|
     song.artist == self
   end
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
  self.find_by_name(name) || self.create_by_name(name)
  end
  
  def self.find_by_name(name)
    @@all.find {|artist| artist.name == name}
  end
  
  def self.create_by_name(name)
    new_artist = Artist.new()
  end
  
end