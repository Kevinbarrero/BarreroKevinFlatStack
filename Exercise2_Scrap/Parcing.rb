require 'open-uri'
require 'net/http'
require 'nokogiri'
require 'httparty'
require 'webdrivers'
html = URI.open("http://kazan-news.net/")
#uri = URI.parse(html)
response = Nokogiri::HTML(html)
#puts response
response = response.xpath("//span[@class='news-list__ntitle']").text

puts response