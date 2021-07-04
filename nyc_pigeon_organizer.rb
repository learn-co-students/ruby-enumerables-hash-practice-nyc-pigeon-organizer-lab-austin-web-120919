require "pry"
#pigeon_data = {
  # :color => {
  #   :purple => ["Theo", "Peter Jr.", "Lucky"],
  #   :grey => ["Theo", "Peter Jr.", "Ms. K"],
  #   :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
  #   :brown => ["Queenie", "Alex"]
  # },
  # :gender => {
  #   :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
  #   :female => ["Queenie", "Ms. K"]
  # },
  # :lives => {
  #   "Subway" => ["Theo", "Queenie"],
  #   "Central Park" => ["Alex", "Ms. K", "Lucky"],
  #   "Library" => ["Peter Jr."],
  #   "City Hall" => ["Andrew"]
  # }
def nyc_pigeon_organizer(data)
  pigeons_hash = {}
  data[:gender][:male].each do |name|
    pigeons_hash[name] = {}
  end
  data[:gender][:female].each do |name|
    pigeons_hash[name] = {}
  end
  data.each do |data_type, data_attributes| #|color, all the colors with the values|
    data_attributes.each do |key, names| #single color, all names with that color|
      names.each do |name|

        if pigeons_hash[name].key?(data_type)
          pigeons_hash[name][data_type] << key.to_s
        else
        pigeons_hash[name][data_type] = []
        pigeons_hash[name][data_type] << key.to_s
      end
    end
  end
  end
  #binding.pry
  pigeons_hash
end
