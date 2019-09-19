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
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def songs
    Songs.all.select {|song| song.artist == self}
  end

  def genres
    artist_genres = []
    Songs.all.each do |song|
      if song.artist == self
        artist_genres << song.genre.name
      end
    end
    artist_genres
  end
end