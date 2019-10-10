require 'nokogiri'

require 'open-uri'

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

a = []
x = page.css('tbody td.text-left')
x.map {|value| a << value.text}

puts a

b = []

y = page.css('a.price')

y.map {|value| b << value.text}

puts b

h = Hash[a.zip(b)]

puts h 




