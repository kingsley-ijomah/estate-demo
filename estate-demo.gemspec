# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'estate-demo/version'

Gem::Specification.new do |gem|
  gem.name          = "estate-demo"
  gem.version       = Estate::Demo::VERSION
  gem.authors       = ["kocolondon"]
  gem.email         = ["kingsley@kocolondon.com"]
  gem.description   = %q{TODO: Demo practice project for developing with Ruby}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
