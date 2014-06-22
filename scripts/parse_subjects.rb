
require 'rubygems'
require 'nokogiri'  

doc = Nokogiri::HTML(File.open("subjects.html"))
out_file = File.new("subjects_parsed.txt", "w")

File.open('subjects.html').each do |line|

 if(line=~/label/ )

  parsedLine=Nokogiri::HTML(line)

  subject=parsedLine.css("label").text.strip.split("(")[0].strip

  puts "#{subject}"
  out_file.puts "#{subject}"

 end

 end