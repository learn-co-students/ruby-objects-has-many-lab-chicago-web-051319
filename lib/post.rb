class Post
    attr_accessor :author, :post, :posts, :title, :name

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if @author
            @author.name
        else
            nil
        end
    end

end