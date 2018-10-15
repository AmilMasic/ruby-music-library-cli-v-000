require "pry"
class MusicImporter
  attr_accessor :path
  @@files = []
  def initialize(path)
    # binding.pry
    @path = path
    # @@files = []
  end

  def files()
   @files ||= Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
 end
end
