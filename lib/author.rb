require 'pry'

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

  def title
    @@all
  end

  def add_post_by_title(title)
    post_title = Post.new(title)
    self.posts << post_title
    post_title.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end
