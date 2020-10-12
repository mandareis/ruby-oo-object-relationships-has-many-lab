require "pry"

class Artist
  def songs
    Song.all.select { |song| song.artist == self }
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.song_count
    Song.all.count
  end
end

# adele = Artist.new("Adele")
# hello = Song.new("Hello")
