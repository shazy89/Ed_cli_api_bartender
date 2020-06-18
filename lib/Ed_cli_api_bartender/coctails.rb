

class Cocktails

    attr_accessor :name, :glass_type, :instructions, :ingredients

    @@all = []
    def initialize(name: , glass_type:, instructions:, ingredients:)

        @name = name
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

  def self.index_names
      @@all.each_with_index do |name, index| puts "#{index + 1}. #{name.name}"
  end
end

def  self.coctail_recepies(user_input)
    
    name = user_input
  find_coctail = Cocktails.all.find  {|coctail| coctail.name == name }
    if find_coctail == nil
    puts "Invalid Name".red
   
       else
puts  "Cocktail name: #{find_coctail.name}.
Glass type: #{find_coctail.glass_type}.
Ingredients: #{find_coctail.ingredients}.
Instructions: #{find_coctail.instructions}.  "

        end


end
        

end


