class Song

  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist, genre)
    
  end
  
  def self.all
    @@all
  end
  
  

end