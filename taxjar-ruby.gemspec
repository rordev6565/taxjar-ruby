# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'taxjar/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "taxjar-ruby"
  spec.version       = Taxjar::Ruby::VERSION
  spec.authors       = ["Tim Case"]
  spec.email         = ["tim@2drops.net"]
  spec.summary       = %q{Ruby wrapper for Taxjar API}
  spec.description   = %q{Ruby wrapper for Taxjar API, more info at developer.taxjar.com}
  spec.homepage      = "developers.taxjar.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
