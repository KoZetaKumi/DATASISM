require 'json'
require 'net/http'
require 'uri'

class Task
  def self.run
    uri = URI('https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_month.geojson')
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)

    data['features'].each do |feature|
      # Persist the data to your database
      # ...
    end
  end
end

Task.run
