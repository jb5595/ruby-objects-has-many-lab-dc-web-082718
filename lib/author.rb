class Author
  # creates getter for name method
  attr_reader :name


  def initialize(name)
    @name = name
    # creates @post array to track all songs created by each author instance
    @posts = []
  end

  # returns all posts made by an author instance
  def posts
    @posts
  end


  def add_post(post)
  # adds post to author instance's post array
    @posts << post
  # uses posts setter method to set posts author to self
    post.author = self
  end

  def add_post_by_title(title)
    # creates new post with given title
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    Post.all_posts.length
  end


end
