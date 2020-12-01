require 'pry'   #Everyone's Favorite debugging tool
require 'http'  #generic HTTP Parsing gem

require_relative './version'
require_relative './lead'
require_relative './cli'
require_relative './PlacesQuery'

# You must provide a global variable key in this .rb file as "$APIKEY = 'foo'"
require_relative '../environment/API_Key'