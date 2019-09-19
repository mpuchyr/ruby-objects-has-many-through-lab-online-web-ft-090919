class Genre
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    
  end
  
  def self.all
    @@all
  end
end