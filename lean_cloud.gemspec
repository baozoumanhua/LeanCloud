# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lean_cloud/version'

Gem::Specification.new do |spec|
  spec.name          = "lean_cloud"
  spec.version       = LeanCloud::VERSION
  spec.authors       = ["LYY"]
  spec.email         = ["shinxjl+github@gmail.com"]
  spec.summary       = %q{LeanCloud restful API for ruby.}
  spec.description   = %q{LeanCloud restful API for ruby.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rest-client"
  spec.add_development_dependency "multi_json"
end
