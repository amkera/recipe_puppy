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
  end 
  
  def show_recipes_by_index
  end 
  
  
end 

