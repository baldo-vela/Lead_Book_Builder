require_relative './environment/API_Key.rb'
require 'pry'   #Everyone's Favorite debugging tool
require 'http'  #generic HTTP Parsing gem
require 'json'  

require_relative './lib/version'
require_relative './lib/lead'
require_relative './lib/cli'
require_relative './lib/PlacesQuery'
require_relative './samplejson.rb' #Stores the sample json for reference

# You must provide a global variable key in this .rb file as "$APIKEY = 'foo'"

# Lead_Book_Builder/environment/API_Key.rb