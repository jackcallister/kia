# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kia/version'

Gem::Specification.new do |spec|
  spec.name          = "kia"
  spec.version       = Kia::VERSION
  spec.authors       = ["Jack Callister"]
  spec.email         = ["jarsbe@gmail.com"]
  spec.description   = "A static site generator"
  spec.summary       = "A static site generator"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = ["kia"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_dependency "rack"
  spec.add_dependency "tilt"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_development_dependency "debugger"
end
