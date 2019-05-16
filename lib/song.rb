class Song
 attr_accessor :artist, :song, :name

@@songs = []
@@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist
      return artist.name
    else
      nil
    end
  end

end
