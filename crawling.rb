# require 'rubygems'
# require 'nokogiri'
# require 'open-uri'
# require 'pry'
# require "prawn"
# require "csv"
# numbers = [921813104020,921813104005,921813104001]
# numbers.each do |number|
# doc = Nokogiri::HTML(open("http://aucoe.annauniv.edu/cgi-bin/result/cgrade.pl?regno=921813104001"))
# Prawn::Document.generate("pdf/#{number}.pdf") do
# doc.css('table , tr, td').each do |link|
# 	# link.css('table , tr , td').each do |i| 
# 	# 	puts i.content
# 	if link.children[1] == nil
# 		 text link.children[0].content
# 	end
# end
# end
# end

require 'rubygems'
require 'chunky_png'
require 'nokogiri'
require "base64"
require 'open-uri'
require 'pry'
# doc = Nokogiri::HTML(open("http://coe1.annauniv.edu/home/"))
# doc.css('#login_stu').each do |link|
# 	url = link.css('img')[0].first[1]
# end
	# value = Base64.decode64(url['data:image/png;base64,'.length .. -1])
# 	File.open('test1.png', 'wb') { |f| f.write(value) }
# end
# 	File.open('test1.png', 'r') do|f|
png_stream = ChunkyPNG::Datastream.from_file('test.png')
png_stream.each_chunk { |chunk| 
    p chunk.type
    # chunk.content
     }

# File.open('test.png', 'r') do|f|
            # binding.pry
  # f.write(Base64.decode64(base_64_encoded_data))
# end
