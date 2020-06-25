
class Cli
   
def run
  welcome
  sleep(2)
  to_continue
  sleep(2)
  main_menu
  menu_2
end



 def welcome
    puts "---      ---     ++++    ".green
    puts "---      ---     ++++    ".green
    puts "--- ---- ---     ++++    ".green
    puts "--- ---- ---     ++++    ".green
    puts "---      ---     ++++    ".green
    puts "---      ---     ++++    ".green
    puts "--------------------------------------".green
    puts "Welcome to the cocktails recepie gem."
    puts "Do you want to see whats inside?"
    puts "--------------------------------------".green
    puts "To Search cocktail by name press #{"1".light_green} "
    puts "To List all cocktails by the letter A press #{"2".light_green}"
    puts "To list all cocktails by the letter B press #{"3".light_green}"
    puts "You can type A for cocktails with the first letter #{"A".light_green} or #{"B".light_green} for cocktails with the first letter B "
    puts "--------------------------------------".green
    puts "For search by first letter type #{"Search".light_green} "
    puts "--------------------------------------".green
    puts "To quit the program type >> #{"exit".light_green} <<"
    
    end
    
    def to_continue
        user_input = gets.strip
        sleep(2)
        if user_input == "1" 
            head
            API.get_cockails_by_name
            Cocktails.index_names
            thanks
        elsif user_input == "2"
             head
             API.get_coctails_by_letter_A
             Cocktails.index_names
             thanks
        elsif user_input == "3"
             head
             API.get_coctails_by_letter_B
             Cocktails.index_names
             thanks
        elsif user_input == "exit" || user_input == "Exit"
                goodbye
                exit
        elsif  user_input == "A" || user_input == "B"     
            head
            API.get_coctails_by_letter(letter = user_input)
            Cocktails.index_names
            thanks
            elsif user_input == "search" || user_input == "Search"
              puts "Please type the first uppercase letter of the cocktails you are looking for " 
              input = gets.strip
              head
              API.by_first_letter_new_way
              Cocktails.search_by_first_letter(input)
              thanks
        else 
            invalid_input 
            to_continue
            end
        end    
       
        
    
        def main_menu
            puts "--------------------------------------".green
            puts "For cocktail recipes type the name of the cocktails"
            puts "exemple:  #{"ABC".green} or #{"A1".green} or any cocktail from the list"
            puts "To quit the program type >> #{"exit".green} <<"
            puts "--------------------------------------".green
            user_input = gets.strip
            if user_input == "exit" || user_input == "Exit"
                goodbye
                exit
            else 
                Cocktails.coctail_recepies(user_input)
                menu_2
            end
        end
     
        def menu_2
            sleep(1)
            puts "--------------------------------------".green
            puts "To go back to the beginning press #{"1".blue} "
            puts "For another cocktail recipe press #{"2".blue}"
            puts "To exit the program type #{"exit".blue}"
            puts "--------------------------------------".green
            user_input = gets.strip
            if user_input.to_i == 1
                run
            elsif user_input.to_i == 2
                main_menu
            elsif user_input == "exit" || user_input == "Exit"
                goodbye
                exit
            else
                puts "Invalid Value".red
                menu_2
            end
        end
        
        def invalid_input
           puts "--------------------------------------".green
            puts "Invalid Value".red
           puts "--------------------------------------".green
        end
        
        def goodbye
            puts "Good Bye and have a great day".light_magenta
            puts "--------------------------------------".green
        end
            
        def head
            puts ">>>>>>>>>> #{"Cocktails Menu".green.italic.bold} <<<<<<<<"
            puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
        end
        def thanks 
            puts " "
            puts "--------------------------------------".green
            puts "Thanks for your patience. Here is your cocktail list"
            puts "--------------------------------------".green
        end

      

    end
      



#find = Cocktails.all.select {|obj| obj.name.match("A") }.each do |name| puts name.name end 


