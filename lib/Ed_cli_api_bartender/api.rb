

class API
BASE_URL = "https://www.thecocktaildb.com/api/"

    def self.get_coctails_by_letter_A
       response = RestClient.get(BASE_URL + "json/v1/1/search.php?f=a")
        data = JSON.parse(response)
        data["drinks"].each {|coctail_data| 
         name =  coctail_data["strDrink"]
         glass_type = coctail_data["strGlass"]
         instructions = coctail_data["strInstructions"]
         ingredients = "#{coctail_data["strIngredient1"]}, #{coctail_data["strIngredient2"]}, #{coctail_data["strIngredient3"]}, #{coctail_data["strIngredient4"]}"
         Cocktails.new(
            name: name, 
            glass_type: glass_type,
            instructions: instructions,
            ingredients: ingredients
            ) }   
                    
 end
 
   def self.get_cockails_by_name
    
         response = RestClient.get(BASE_URL + "json/v1/1/search.php?s=margarita")
          data = JSON.parse(response)
          data["drinks"].each {|coctail_data| 
           name =  coctail_data["strDrink"]
           glass_type = coctail_data["strGlass"]
           instructions = coctail_data["strInstructions"]
           ingredients = "#{coctail_data["strIngredient1"]}, #{coctail_data["strIngredient2"]}, #{coctail_data["strIngredient3"]}, #{coctail_data["strIngredient4"]}"
           Cocktails.new(
              name: name, 
              glass_type: glass_type,
              instructions: instructions,
              ingredients: ingredients
              ) }  

   end
   def self.get_coctails_by_letter_B
      response = RestClient.get(BASE_URL + "json/v1/1/search.php?f=b")
      data = JSON.parse(response)
      data["drinks"].each {|coctail_data| 
       name =  coctail_data["strDrink"]
       glass_type = coctail_data["strGlass"]
       instructions = coctail_data["strInstructions"]
       ingredients = "#{coctail_data["strIngredient1"]}, #{coctail_data["strIngredient2"]}, #{coctail_data["strIngredient3"]}, #{coctail_data["strIngredient4"]}"
       Cocktails.new(
          name: name, 
          glass_type: glass_type,
          instructions: instructions,
          ingredients: ingredients
          ) }  
   end
  def self.get_coctails_by_letter(letter = "A")

if letter == "A"
   response = RestClient.get(BASE_URL + "json/v1/1/search.php?f=a")
        data = JSON.parse(response)
        data["drinks"].each {|coctail_data| 
         name =  coctail_data["strDrink"]
         glass_type = coctail_data["strGlass"]
         instructions = coctail_data["strInstructions"]
         ingredients = "#{coctail_data["strIngredient1"]}, #{coctail_data["strIngredient2"]}, #{coctail_data["strIngredient3"]}, #{coctail_data["strIngredient4"]}"
         Cocktails.new(
            name: name, 
            glass_type: glass_type,
            instructions: instructions,
            ingredients: ingredients
            ) }   
   else 
       response = RestClient.get(BASE_URL + "json/v1/1/search.php?f=b")
   data = JSON.parse(response)
   data["drinks"].each {|coctail_data| 
    name =  coctail_data["strDrink"]
    glass_type = coctail_data["strGlass"]
    instructions = coctail_data["strInstructions"]
    ingredients = "#{coctail_data["strIngredient1"]}, #{coctail_data["strIngredient2"]}, #{coctail_data["strIngredient3"]}, #{coctail_data["strIngredient4"]}"
    Cocktails.new(
       name: name, 
       glass_type: glass_type,
       instructions: instructions,
       ingredients: ingredients
       ) }  
    end   
 

  end

  def self.by_first_letter_new_way
   response = RestClient.get(BASE_URL + "json/v1/1/search.php?f=a")
   data = JSON.parse(response)
   data["drinks"].each {|coctail_data| 
    name =  coctail_data["strDrink"]
    glass_type = coctail_data["strGlass"]
    instructions = coctail_data["strInstructions"]
    ingredients = "#{coctail_data["strIngredient1"]}, #{coctail_data["strIngredient2"]}, #{coctail_data["strIngredient3"]}, #{coctail_data["strIngredient4"]}"
    Cocktails.new(
       name: name, 
       glass_type: glass_type,
       instructions: instructions,
       ingredients: ingredients
       ) }   

       response = RestClient.get(BASE_URL + "json/v1/1/search.php?s=margarita")
       data = JSON.parse(response)
       data["drinks"].each {|coctail_data| 
        name =  coctail_data["strDrink"]
        glass_type = coctail_data["strGlass"]
        instructions = coctail_data["strInstructions"]
        ingredients = "#{coctail_data["strIngredient1"]}, #{coctail_data["strIngredient2"]}, #{coctail_data["strIngredient3"]}, #{coctail_data["strIngredient4"]}"
        Cocktails.new(
           name: name, 
           glass_type: glass_type,
           instructions: instructions,
           ingredients: ingredients
           ) }  

           response = RestClient.get(BASE_URL + "json/v1/1/search.php?f=b")
           data = JSON.parse(response)
           data["drinks"].each {|coctail_data| 
            name =  coctail_data["strDrink"]
            glass_type = coctail_data["strGlass"]
            instructions = coctail_data["strInstructions"]
            ingredients = "#{coctail_data["strIngredient1"]}, #{coctail_data["strIngredient2"]}, #{coctail_data["strIngredient3"]}, #{coctail_data["strIngredient4"]}"
            Cocktails.new(
               name: name, 
               glass_type: glass_type,
               instructions: instructions,
               ingredients: ingredients
               ) }  

  end
end



  









