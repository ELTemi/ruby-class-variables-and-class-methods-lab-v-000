require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artist = []
  @@genre = []
  
  def self.artist
    @@artist    
  end
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artist << self
    @@genre << self.genre
  end

  def self.count
    @@count
  end
end
