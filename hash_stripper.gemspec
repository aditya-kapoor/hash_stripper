# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hash_stripper/version'

Gem::Specification.new do |spec|
  spec.name          = "hash_stripper"
  spec.version       = HashStripper::VERSION
  spec.authors       = ["aditya-kapoor"]
  spec.email         = ["aditya.kapoor@vinsol.com"]
  spec.summary       = "A simple utility gem that will strip out spaces in your hash."
  spec.description   = "A simple utility gem that will strip out spaces in your hash."
  spec.homepage      = "https://github.com/aditya-kapoor/hash_stripper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
