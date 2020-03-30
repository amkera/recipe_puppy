class Recipe 
  attr_accessor :title, :href, :ingredients

  @@all_recipes = []
  
  def initialize(recipe_hash)
    recipe_hash.each do |key, value|
      self.send("#{key}=", value) if self.respond_to?("#{key}=")
    end 
  end 
end 

