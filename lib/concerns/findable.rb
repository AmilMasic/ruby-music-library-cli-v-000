module Concerns


  module Findable
    def find_by_name(name)
      all.find do |v|
        self.name == name
      end
    end
  end

end
