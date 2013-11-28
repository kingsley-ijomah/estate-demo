require 'rubygems'
require 'active_record'
require 'yaml'

url = '/private/var/www/apps/practice/estate-demo/lib/estate-demo/config/database.yml'
dbconfig = YAML::load(File.open(url))
ActiveRecord::Base.establish_connection(dbconfig)
ActiveRecord::Base.logger = Logger.new(STDERR)

class User < ActiveRecord::Base

end