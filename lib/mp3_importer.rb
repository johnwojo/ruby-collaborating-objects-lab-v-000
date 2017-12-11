require 'pry'
class MP3Importer
attr_accessor :path

  def initialize(path)
    @path = path
  end


  def files
    Dir.entries(path).delete_if {|x|x == "." || x == ".."}
  end


  def import
    self.files.each do |filename|
      song_data = filename.split(" - ")
end
