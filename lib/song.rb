class Song
  attr_accessor :song, :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @song
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def artist=(artist)
    @artist = artist
  end

  def artist_name
    if artist.nil?
      return nil
    end
    self.artist.name
  end

end
