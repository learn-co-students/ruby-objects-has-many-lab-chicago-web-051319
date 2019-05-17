class Author
  attr_accessor :name, :posts
  
  @@all_posts_with_authors = []
  
  def initialize(_name="")
    @name = _name
    @posts = []
  end
  
  def posts
    @posts
  end
  
  def add_post(new_post)
    new_post.author = self
    @posts << new_post
    @@all_posts_with_authors << new_post
    return new_post
  end
  
  def add_post_by_title(title)
    temp = Post.new(title)
    add_post(temp)
  end
  
  def self.post_count
    @@all_posts_with_authors.length
  end
end