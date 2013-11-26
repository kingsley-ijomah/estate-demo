require 'active_record'

ActiveRecord::Base.establish_connection(
	:adapter => 'sqlite',
	:database => 'database/file'
)