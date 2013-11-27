lib = File.expand_path('../../config/', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rubygems'
require 'active_record'
require 'yaml'

dbconfig = YAML::load(File.open('connection.yml'))
ActiveRecord::Base.establish_connection(dbconfig)
ActiveRecord::Base.logger = Logger.new(STDERR)


class User < ActiveRecord::Base

end

puts User.count