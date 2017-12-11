class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
  end


  def save
    @@all << self
    self
  end


  def self.new_by_filename(filename)
  end

end
