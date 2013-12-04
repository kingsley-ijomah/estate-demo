# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
ENV["DATABASE"] ||=  '/database.yml'

require 'estate-demo/version'

Gem::Specification.new do |gem|
  gem.name          = "estate-demo"
  gem.version       = Estate::Demo::VERSION
  gem.authors       = ["kocolondon"]
  gem.email         = ["kingsley@kocolondon.com"]
  gem.description   = %q{Demo practice project for developing with Ruby}
  gem.summary       = %q{Write a gem summary}
  gem.homepage      = ""

  gem.add_development_dependency 'rspec', '~> 2.14.1'
  gem.add_development_dependency 'cucumber', '~> 1.3.10'
  gem.add_development_dependency 'rspec-expectations', '~> 2.14.4'

  gem.add_runtime_dependency 'activerecord', '~> 4.0.1'
  gem.add_runtime_dependency 'sqlite3', '~> 1.3.8'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end