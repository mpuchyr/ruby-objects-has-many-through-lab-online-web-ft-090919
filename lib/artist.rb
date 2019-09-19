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
  
  def new_song(name)
    Song.new(name, self)
  end
  
  def songs
    Songs.all.select {|song| song.artist == self}
  end

end