module Concerns


  module Findable
    def find_by_name(name)
      all.find do |v|
        v.name == name
      end
    end
  end

end
