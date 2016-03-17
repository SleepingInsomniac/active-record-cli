require 'yaml'
require 'active_record'
require 'sqlite3'

DB_FILE = File.join File.dirname(__FILE__), 'data.sqlite'

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)
