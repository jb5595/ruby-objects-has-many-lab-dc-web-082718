class Artist
  #creates setter and getter for artist's name attribute
  attr_accessor :name


  def initialize(name)
    # initializes artist instance w/ given name
    @name = name
    # creates empty array track all artists songs
    @songs = []
  end

  def songs
    # returns array of all an instances songs
    @songs
  end

  def add_song(song)
    # pushes song to artist's song array
    @songs << song
    # sets song's artist equal to self (artist instance)
    song.artist = self
  end

  # method which creates song object and adds song to artist
  def add_song_by_name(name)
    # creates new song object
    song = Song.new(name)
    # adds new song to artists song list
    add_song(song)
  end

  # returns counr of all songs by all artist
  def self.song_count
    # calls song classes all class method to return length of the @@all array
    #which is an array of all song objects created
    Song.all.length
  end



end
