# require 'csv'

# TODO - let's read/write data from beers.csv
filepath = 'data/store.csv'
csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

store = {
  :banana => 0.5,
  :kiwi => 2.5,
  :mango => 2,
  :asparagus => 10
}

p store

# This is write to csv file
CSV.open(filepath, 'rb', csv_options) do |csv|
  csv << ['Fruit', 'Price']

  store.each do |fruit_name, price|
    csv << [fruit_name, price]
  end

end

puts "storing to csv done"











# This is read the csv file
# CSV.foreach(filepath, csv_options) do |row|
#   p row
#   # Here, row is an array of columns
#   # puts "#{row[0]} | #{row[1]} | #{row[2]}"
# end
