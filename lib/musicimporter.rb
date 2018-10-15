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
   @files ||= Dir.glob("#{@path}/*.mp3").collect do |file|
     file.gsub("#{@path}/", "")
   end
  end

end
