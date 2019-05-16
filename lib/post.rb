class Post
  attr_accessor :posts, :author, :title, :name

@@all = []

  def initialize (title)
    @title=title

    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if @author
      return author.name
    else
      nil
    end 
  end

end
