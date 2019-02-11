require 'sinatra' 
require 'json' 
require 'time'

set :bind, '0.0.0.0' 

a = [] # creating an empty array as the main skeleton of the JSON 


get '/' do 
 
 "Welcome to the file storing API. This one uses a JSON file instead of a DB"

end

get '/:temperature/:humidity' do 

 a << {"date" => "#{Time.now().month()}/#{Time.now().day()}/#{Time.now().year()}", "temperature" => params[:temperature], "humidity" => params[:humidity]} 
 
 temp_change = File.open("data.json", "w+") 
 temp_change.write(a.to_json) 
 temp_change.close() 

 'successfully written to the file' 

end 

get '/data' do 

 content_type :json 
 json_file = File.open("data.json", "rb") 
 "#{json_file.readline()}" 

end 
