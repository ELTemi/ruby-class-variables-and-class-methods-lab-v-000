require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artist = []
  @@genre = []

  def self.artists
    @@artist
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artist << self.artists
    @@genre << self
  end

  def self.count
    @@count
  end
end
