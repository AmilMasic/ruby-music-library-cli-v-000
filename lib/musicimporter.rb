require "pry"
class MusicImporter
  attr_accessor :path
  @@files = []
  def initialize(path)
    # binding.pry
    @path = path
    # @@files = []
  end

  def files
    @@files
  end
end
