class Song
  # Creates setter and getter for artist variable
  attr_accessor :artist
  # creates getter for name variable
  attr_reader :name

  # creates array to store all song objects
  @@all = []

  def initialize(title)
    @name = title
    # pushes song into @@all array
    @@all << self
  end

  def artist_name
    #checks if song has an artist
    if self.artist
      # calls artists name getter method
      self.artist.name
    else
      nil
    end
  end

  def self.all
    @@all
  end

end
