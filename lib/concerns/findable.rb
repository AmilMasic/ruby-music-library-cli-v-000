module Concerns


  module Findable
    
    def find_by_name(name)
      all.find do |v|
        v.name == name
      end
    end
  end

  def create(name)
    # binding.pry
    new_object = Artist.new(name)
    # save
    # new_song.name
  end

  def find_or_create_by_name(name)
    if find_by_name(name)
      find_by_name(name)
    else
      create(name)
    end
  end

end
