require 'pry'
class Author
    @@all = []
    attr_accessor :name, :post, :title

    def initialize(name)
        @name = name
        @posts = []
    end
    

    def posts
        @posts
    end
    
    def add_post(post)
        @posts << post
        @@all << post
        post.author = self
    end 
    
    def add_post_by_title(title)
        post = Post.new(title)
        @posts << post
        @@all << post
        post.author = self
    end

    def self.post_count
        @@all.length
    end
end