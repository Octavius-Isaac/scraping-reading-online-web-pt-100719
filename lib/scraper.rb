#require Nokogiri and open-uri
require 'nokogiri'
require 'open-uri'

#Grab HTML from landing page
html = open("https://flatironschool.com/")

#Take string of HTML returned from above and convert to a Node Set
doc = Nokogiri::HTML(html)
courses = doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")
 
courses.each do |course|
  puts course.text.strip
end