require 'sinatra' 
require 'json' 

set :bind, '0.0.0.0' 

get '/' do 
 
 "Welcome to the file storing API. This one uses a JSON file instead of a DB". 
end
