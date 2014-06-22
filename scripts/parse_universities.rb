require 'rubygems'
require 'nokogiri'  

universities_num=0

out_file = File.new("universities_parsed.txt", "w")

File.open('universities.html').each do |line|

 if(line=~/title/ && !(line=~/class/) )

  parsedLine=Nokogiri::HTML(line)

  university=parsedLine.css("a").text.strip

  puts "#{university}"
  out_file.puts "#{university}"
 end

end