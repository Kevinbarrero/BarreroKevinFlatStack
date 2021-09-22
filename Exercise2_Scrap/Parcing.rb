require 'open-uri'
require 'net/http'
require 'nokogiri'
require 'httparty'

html = URI.open("http://kazan-news.net/")
#uri = URI.parse(html)
response = Nokogiri::HTML(html)
#puts response
description = response.css('span').include('news-list__ntitle').text
puts description