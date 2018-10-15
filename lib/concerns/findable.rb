module Concerns


  module Findable

    def find_by_name(name)
      all.find do |v|
        v.name == name
      end
    end
  end

  def create_by_name(name)
    # binding.pry
    new_object = self.new
    new_object.name = name
    new_object
    # save
    # new_song.name
  end

  def find_or_create_by_name(name)
    if all.find_by_name(name)
      all.find_by_name(name)
    else
      create_by_name(name)
    end
  end

end
