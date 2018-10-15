module Concerns


  module Findable
    def find_by_name(name)
      all.find do |v|
        self.name == v
      end
    end
  end

end
