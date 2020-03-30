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
    puts "Loading recipes...\n"
    sleep(2)
    
    Recipe.all.each.with_index(1) do |recipe, index| #begin counting at 1
      puts "#{index}. #{recipe.title.split(" ").join(" ")}"
      sleep(0.2)
    end
    
    puts "\nTotal number of recipes: #{Recipe.all.count}.\n"
    
    sleep(1)
    get_user_input2
  end 
  
  def get_user_input2
    puts "\nEnter the number of the recipe you'd like to see details about:\n"
    user_input2 = gets.strip
    recipe_choice_by_number(user_input2)
  end
  
  
end 

