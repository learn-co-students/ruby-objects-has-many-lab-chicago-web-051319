class Post
    attr_accessor :name, :author

    @@all = []

    def initialize(name)
        @name = name
        @author = author
        @@all << self
    end

    def self.all
        @@all
    end

    def title
        self.name
    end

    def author_name
        author.name if author
    end







end
