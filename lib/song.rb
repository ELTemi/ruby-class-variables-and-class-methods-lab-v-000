require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genre = []

  def self.artists
    @@artists << self if @@artists.include?(self) == false
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << self
  end

  def self.count
    @@count
  end
end
