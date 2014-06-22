# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


File.open('/Users/behsaadramez/Documents/workspace/studyqz-backend/scripts/subjects_parsed.txt').each do |subject|

Subject.create(:name => subject)

puts "inserted subject #{subject}"

end


File.open('/Users/behsaadramez/Documents/workspace/studyqz-backend/scripts/universities_parsed.txt').each do |university|

University.create(:name => university)

puts "inserted university #{university}"

end