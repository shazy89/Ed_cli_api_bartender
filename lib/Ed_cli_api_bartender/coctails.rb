

class Coctails

    attr_accessor :name, :glass_type, :instructions, :ingredients

    @@all = []

    def initialize(name: , glass_type:, instructions:, ingredients:)
        @name = 
        @glass_type = glass_type
        @instructions = instructions
        @ingredients = ingredients

        self.save
    end

def save
    @@all << self
  end
  
  def self.all
    @@all
  end
end
#binding.pry
