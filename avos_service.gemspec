# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'avos_service/version'

Gem::Specification.new do |spec|
  spec.name          = "avos_service"
  spec.version       = AvosService::VERSION
  spec.authors       = ["LYY"]
  spec.email         = ["shinxjl+github@gmail.com"]
  spec.summary       = %q{LeanCloud (AVOS Cloud) restful API for ruby.}
  spec.description   = %q{LeanCloud (AVOS Cloud) restful API for ruby.}
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
