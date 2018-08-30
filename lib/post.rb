class Post

  attr_accessor :author
  attr_reader :title

  @@all = []

  def initialize(title)
    @title = title
    Author.post_without_author(self)
    @@all << self
  end

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
