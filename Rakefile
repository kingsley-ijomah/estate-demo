require "bundler/gem_tasks"

directory "tmp"

file "tmp/hello.tmp" => "tmp" do
	sh "echo 'Hello' > 'tmp/hello.tmp'"
end

task :default => 'morning:make_coffee'

namespace :morning do
	desc "Turn off alarm"
	task :turn_off_alarm do
		puts "Turned off alarm. would have liked 5 more minutes though!"
	end

	desc "Groom myself"
	task :groom_myself do
		puts "Brushed teeth"
		puts "Showered."
		puts "Shaved"
	end

	desc "Make coffee"
	task :make_coffee do
		cups = ENV["COFFEE_CUPS"] || 2
		puts "Made #{cups} cups of cuffee. Shakes are gone."
	end

	desc "Walk dog"
	task :walk_dog do
		puts "Dog walked."
	end

	desc "Ready for the day"
	task :ready_for_the_day => [:turn_off_alarm, :groom_myself, :make_coffee, :walk_dog] do
		puts "Ready for the day!"
	end
end