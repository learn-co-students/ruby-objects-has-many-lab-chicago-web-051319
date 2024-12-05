class Song
  
  attr_accessor :artist
  @@all = []
  
  def initialize(name)
    @@all << self
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def name
    @name
  end
  
  def name=(str)
    @name = str
  end
  
  def artist
    @artist
  end
  
  def artist=(str)
    @artist = str
  end
  
  def artist_name
    if @artist.class == Artist
      return @artist.name
    end
    
  end
  
end

