require 'yaml'
require 'active_record'

namespace :db do

  desc "Create the database"
  task :create do
    db_conf = YAML::load(File.open('config/database.yml'))
    ActiveRecord::Base.establish_connection(db_conf)
    ActiveRecord::Base.connection.create_database(db_conf.fetch('database'))
  end

  desc "Drop the database"
  task :drop do
    db_conf = YAML::load(File.open('config/database.yml'))
    ActiveRecord::Base.establish_connection(db_conf)
    ActiveRecord::Base.connection.drop_database(db_conf.fetch('database'))
  end
  
  desc "Migrate the database"
  task :migrate do
    db_conf = YAML::load(File.open('config/database.yml'))
    ActiveRecord::Base.establish_connection(db_conf)
    ActiveRecord::Migrator.migrate("db/migrate/")
  end

end