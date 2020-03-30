require 'uri'
require 'json'

class API 
  def self.get_recipes 
    url = "http://www.recipepuppy.com/api/?q=puertorican"
    uri = URI(url)
  end 
end 

