
namespace :db do
  desc "This loads the development data."
  task :testseed => :environment do

    require 'active_record/fixtures'

    Dir.glob('/Users/behsaadramez/Documents/workspace/studyqz-backend/db/fixtures/*.yml').each do |file|
      base_name = File.basename(file, '.*')
      puts "Loading #{base_name}..."
      ActiveRecord::Fixtures.create_fixtures('db/fixtures', base_name)
    end
  end

  desc "This drops the db, builds the db, and seeds the data."
  task :testreseed => [:environment, 'db:reset', 'db:testseed', 'db:seed']
end