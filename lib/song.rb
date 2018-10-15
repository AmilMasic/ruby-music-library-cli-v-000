require "pry"
class Song
  attr_accessor :name, :artist, :genre

  @@all = []
  def initialize(name, artist = nil, genre = nil)
    # binding.pry
    if artist != nil
    self.artist=(artist)
    end

    if genre != nil
      self.genre=(genre)
    end
    @name = name

    save
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(song)
    # binding.pry
    new_song = Song.new(song)
    # save
    # new_song.name
  end

  def artist=(artist)
    @artist= artist
    artist.add_song(self)
  end

  def genre=(genre)
    @genre= genre
    genre.add_song(self)
  end

  def self.find_by_name(song_name)
    self.all.find do |song|
      song.name == song_name
    end
  end



  def self.find_or_create_by_name(song_name)
    if self.find_by_name(song_name)
      self.find_by_name(song_name)
    else
      self.create(song_name)
    end
end
