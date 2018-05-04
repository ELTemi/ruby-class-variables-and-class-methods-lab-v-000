require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artist = []
  @@genre = []

  def self.artists
    if self.uniq
      @@artist << self
    end
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
