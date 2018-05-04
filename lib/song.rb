require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artist = []
  @@genre = []

  def self.artists(artist)
    @@artist << artist if self.artist != self
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artist << artist
    @@genre << self
  end

  def self.count
    @@count
  end
end
