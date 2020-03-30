class RecipePuppy::CLI 
  
  def welcome
    puts "\n\nWelcome to Puerto Rican Cooking 101!\n\n"
    sleep(2)
    puts "To enter the classroom and see recipes, type 'enter'.\n\n"
    sleep(2)
    puts "Or, if you prefer to order takeout, type 'exit'.\n\n"
    API.get_recipes
    enter_or_exit
  end 
  
  def enter_or_exit
    user_input1 = gets.strip.downcase
    if user_input1 == "enter"
      show_recipes_by_index
      enter_or_exit
    elsif user_input1  == "exit"
      bye
    else
      try_again
    end
  end 
  
  def show_recipes_by_index
  end 
  
  
end 

