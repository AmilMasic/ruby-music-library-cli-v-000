require "pry"
class MusicImporter
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files(arg)
    binding.pry
    puts arg
    
  end
end
