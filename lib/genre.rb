require 'pry'
class Genre
  attr_accessor :name, :artist
  attr_reader :song

  @@all = []

  def initialize(name)
    @name = name
  end

  def new_song(name, artist)
    song = Song.new(name, artist, self)
    @@all << song
  end

  def songs
    Song.all.select {|song_name| song_name.genre == self}
  end

  def artists
    binding.pry
    Genre.all.select {|song_name| song_name.genre == self ? song_name : next}
  end

  def self.all
    @@all
  end

end
