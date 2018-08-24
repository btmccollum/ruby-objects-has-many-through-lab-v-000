class Artist
  attr_accessor :name, :song, :genre
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  #takes in a song name and genre and creates a new song for the artist
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
    song
  end

  def songs
    Song.all.select {|songs| songs.artist == self}
  end

  def genres
    Song.all.map{|song_name| song_name.genre}.uniq
  end

  def self.all
    @@all
  end

end
