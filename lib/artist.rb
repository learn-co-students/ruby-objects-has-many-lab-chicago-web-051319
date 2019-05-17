class Artist
  
  attr_accessor :name
  
  @@all_songs_with_artists = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    song.artist = self
    @@all_songs_with_artists << song
    @songs << song
    return song
  end
  
  def add_song_by_name(song_name)
    temp = Song.new(song_name)
    add_song(temp)
  end
  
  def self.song_count
    @@all_songs_with_artists.length
  end
  
end