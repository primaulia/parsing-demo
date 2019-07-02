require 'open-uri'
require 'nokogiri'

keywords_arr = [
  'strawberry',
  'chocolate',
  'saffron',
  'chicken'
]

keywords_arr.each do |keyword|
  url = "http://www.letscookfrench.com/recipes/find-recipe.aspx?type=all&aqt=#{keyword}&spc=0"

  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)

  html_doc.search('.m_titre_resultat a').each do |element|
    if element.text.includes? 'truffle'
      puts "#{element.text} (#{element.attribute('href').value})"
    else
  end

  puts
end



# <div class="m_titre_resultat">
#   <a href="/recipes/recipe_chocolate-truffles_345514.aspx">
#     <b>Chocolate</b> Truffles
#   </a>
# </div>
