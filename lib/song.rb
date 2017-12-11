class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end


  def save
    @@all << self
    self
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    song = Song.new(song_name)
    song.artist_name=(artist_name)
    song.save
  end

  def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
  end

end
