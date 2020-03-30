require 'uri'
require 'json'

class API 
  def self.get_recipes 
    url = "http://www.recipepuppy.com/api/?q=puertorican"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    parsed_hash = JSON.parse(response)
  end 
end 

