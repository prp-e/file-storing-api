require 'sinatra' 
require 'json' 
require 'time'

set :bind, '0.0.0.0' 

a = [] # creating an empty array as the main skeleton of the JSON 
json_data = File.new("data.json")
json_data.close() 

get '/' do 
 
 "Welcome to the file storing API. This one uses a JSON file instead of a DB". 
end
