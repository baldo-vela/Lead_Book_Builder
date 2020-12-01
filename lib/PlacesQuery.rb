require_relative '../environment.rb'


class PlacesQuery
    
    attr_accessor :limit, :searchtype, :longitude, :latitude, :radius, :searchrankby, :parsed_data


    def initialize(latitude='26.243162899999998', longitude='-98.1880178', radius='2500', searchtype='doctor')
        @searchtype = searchtype
        @longitude = longitude
        @latitude = latitude
        @radius = radius
        #@searchrankby = searchrankby
    end

    def query_to_hash
        binding.pry
        url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{@latitude},#{@longitude}&radius=#{@radius}&types=#{@searchtype}&key=#{$APIKEY}"
        raw_query_data = HTTP.get(url)
        data = JSON.parse(raw_query_data)
        #Lead.new_from_json(data)

    end

end

PlacesQuery.new.query_to_hash
