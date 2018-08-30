class Author
  attr_reader :name
  @@total_posts = []

  def initialize(name)
    @name = name
    @posts = []
  end


  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    @@total_posts.length
  end

  def self.post_without_author(post)
    @@total_posts << post

  end


end
