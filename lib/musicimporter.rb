require "pry"
class MusicImporter
  attr_accessor :path
  def initialize(path)
    # binding.pry
    @path = path
    @@files = []
  end

  def files
    @@files
  end
end
