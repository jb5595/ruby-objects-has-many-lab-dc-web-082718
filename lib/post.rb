class Post
  # creates setter and getter method for author
  attr_accessor :author
  # creates getter method for title
  attr_reader :title

  # creates @@all array to store all posts created
  @@all = []

  def initialize(title)
    # creates post with given title
    @title = title
    # pushes post object into @@all array
    @@all << self
  end

    # returns @@all array
  def self.all_posts
    @@all
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

end
