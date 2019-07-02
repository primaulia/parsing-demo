# require 'json'

# TODO - let's read/write data from beers.json
# filepath = 'data/new_beers.json'
# raw_file = File.read(filepath)
# actual_hash = JSON.parse(raw_file)

beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  },
  {
    name:       'Heineken',
    appearance: 'Pilsener',
    origin:     'Holland'
  },
  # etc...
]}

puts "beers before converting it to json"
p beers

puts

puts "this is after"
json_string = JSON.generate(beers)


filepath = 'data/new_beers.json'
File.open(filepath, 'wb') do |file|
  file.write(json_string)
end













# PARSING ONLY
# actual_hash['beers'].each do |beer|
#   p "#{beer['name']} is from #{beer['origin']}"
# end

# STORE DATA BACK TO JSON
