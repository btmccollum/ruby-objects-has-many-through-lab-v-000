class Song
  attr_accessor :name
  attr_reader :artist

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
end
