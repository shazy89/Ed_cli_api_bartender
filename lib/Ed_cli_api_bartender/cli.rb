
class Cli
   
    def run
hi
sleep(2)
menu
sleep(2)
to_continue
sleep(2)
main_menu
menu_2
 end


def to_continue
    user_input = gets.strip
   
    if user_input == "yes" || user_input == "Yes"
        head
        Cocktails.index_names
        puts " "
        puts "--------------------------------------".green
        puts "Thanks for your patience. Here is your cocktail list"
        puts "--------------------------------------".green
        
    elsif user_input == "exit" || user_input == "Exit"
        goodbye
        exit
    else 
        invalid_input 
        to_continue
        end
    end

 
def hi
puts "---      ---     ++++    ".green
puts "---      ---     ++++    ".green
puts "--- ---- ---     ++++    ".green
puts "--- ---- ---     ++++    ".green
puts "---      ---     ++++    ".green
puts "---      ---     ++++    ".green

end

def menu

puts "Welcome to the cocktails recepie gem."
puts "Do you want to see whats inside?"
puts "To continue type >> #{"yes".light_green} << "
puts "To quit the program type >> #{"exit".light_green} <<"

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

def invalid_input
   puts "--------------------------------------".green
    puts "Invalid Value".red
   puts "--------------------------------------".green
end

def goodbye
    puts "Good Bye and have a great day".light_magenta
    puts "--------------------------------------".green
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
    
def head
    puts ">>>>>>>>>> #{"Cocktails Menu".green.italic.bold} <<<<<<<<"
    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
end
end

