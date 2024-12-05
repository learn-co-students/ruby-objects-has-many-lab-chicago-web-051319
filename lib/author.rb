class Author
  attr_accessor :name, :posts

  @@all = []
  @@post_count = 0

  def initialize(name)
    @name = name
    @@all << self
  end

  def posts
    @@all
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @@all << new_post
    @@post_count += 1
  end


  def self.post_count
    @@post_count
  end

end
