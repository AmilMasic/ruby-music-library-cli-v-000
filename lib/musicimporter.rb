require "pry"
class MusicImporter
  attr_accessor :path
  def initialize(path)
    # binding.pry
    @path = path
    @files = []
  end

  def files
    path.each do |song|
      @files << song
    end
    @files
  end
end
