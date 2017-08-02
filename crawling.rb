require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'
require "prawn"
require "csv"
numbers = [921813104020,921813104005,921813104001]
numbers.each do |number|
doc = Nokogiri::HTML(open("http://aucoe.annauniv.edu/cgi-bin/result/cgrade.pl?regno=921813104001"))
Prawn::Document.generate("pdf/#{number}.pdf") do
doc.css('table , tr, td').each do |link|
	# link.css('table , tr , td').each do |i| 
	# 	puts i.content
	if link.children[1] == nil
		 text link.children[0].content
	end
end
end
end