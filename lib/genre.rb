require 'pry'
class Genre
  attr_accessor :name, :artist, :genre
  attr_reader :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, artist)
    binding.pry
    song = Song.new(name, artist, self)
    @@all << song
  end

  def songs
    Song.all.select {|song_name| song_name.genre == self}
  end

  def artists
    # binding.pry
    Genre.all.select {|song_name| song_name.genre == self ? song_name : next}
  end

  def self.all
    @@all
  end

end
binding.pry 