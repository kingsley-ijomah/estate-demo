lib = File.expand_path('../../config/', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rubygems'
require 'active_record'
require 'yaml'

dbconfig = YAML::load(File.open(lib + ENV["DATABASE"]))
ActiveRecord::Base.establish_connection(dbconfig)

class User < ActiveRecord::Base
	def create(user)
		User.create(user)
	end

	def search(value)
		User.where(firstname: value).take
	end
end

puts ENV["DATABASE"]