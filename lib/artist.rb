class Artist
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  #takes in a name and genre and creates a new song for the artist
  def add_song(name, genre)

  end

  def self.all
    @@all
  end

end
