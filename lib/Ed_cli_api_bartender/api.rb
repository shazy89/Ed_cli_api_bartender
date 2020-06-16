
class API
BASE_URL = "https://www.thecocktaildb.com/api/"

    def self.get_coctails
       response = RestClient.get(BASE_URL + "json/v1/1/search.php?f=a")
       data = JSON.parse(response)
        data["drinks"].each {|coctail_data| 
         name =  coctail_data["strDrink"]
         glass = coctail_data["strGlass"]
         instructions = coctail_data["strInstructions"]
         ingredients = "#{coctail_data["strIngredient1"]}, #{coctail_data["strIngredient2"]}, #{coctail_data["strIngredient3"]}, #{coctail_data["strIngredient4"]}"
        }          
       
  #binding.pry 
    end
 
    #def self.get_coctails

    #end
end







#data["drinks"][0]["strDrink"]
#ruby lib/Ed_cli_api_bartender/api.rb
#./bin/coctails-api

#data["drinks"][0].keys