require "bundler/gem_tasks"
require 'active_record'
require 'yaml'

directory "tmp"

task :default => 'db:migrate'

namespace :db do
	desc "Migrate database through db/migrate script"
	task :migrate => :environment do
		ActiveRecord::Migrator.migrate('lib/estate-demo/db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
	end

	desc "Establish connection using details in YAML"
	task :environment do
		ActiveRecord::Base.establish_connection(YAML::load(File.open('lib/estate-demo/config/database.yml')))
		ActiveRecord::Base.logger = Logger.new(File.open('database.log', 'a'))
	end
end