require 'json'
require 'open-uri'

url = 'http://www.omdbapi.com/?s=harry&apikey=adf1f2d7'
user_serialized = open(url).read
movies = JSON.parse(user_serialized)

movies['Search'].each do |movie|
  p movie['Title']
end

