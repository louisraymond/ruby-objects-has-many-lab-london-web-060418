class Author
  attr_accessor :name
  attr_reader :posts
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    @posts << post
    post.author = self
  end

  def self.post_count
    count = 0
    @@all.each do |author|
      count += author.posts.length
    end
    count
  end

end