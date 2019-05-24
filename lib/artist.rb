require 'pry'

class Artist

  attr_accessor :name, :songs, :all


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    new_song.artist = self
    self.songs << new_song
  end

  def self.song_count
    #should return all the songs that an artist should have
    # binding.pry
    Song.all.count

  end

end
