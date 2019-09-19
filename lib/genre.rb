class Genre
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
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    song_artists = []
    # songs.each do |song|
    #   if song.genre == self
    #     song_artists << song.artist
    #   end
    # end
    # song_artists
  end
  
end