require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    @@all
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    add_song(new_song)
  end

  def self.song_count
    @@song_count
  end
end
