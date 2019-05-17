class Post
  attr_accessor :author, :title
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author
    @author
  end
  
  def author=(str)
    @author = str
  end
  
  def author_name
    if @author.class == Author
      return @author.name
    end
  end
end