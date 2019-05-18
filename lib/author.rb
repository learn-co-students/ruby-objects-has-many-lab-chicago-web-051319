class Author
    attr_accessor :name

    @@all

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def posts
        @posts
    end

    def add_post_by_title(name)
        post = Post.new(name)
        @posts << post
        post.author = self
    end

    def Author.post_count
        Post.all.count
    end


end
