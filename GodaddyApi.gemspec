# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'GodaddyApi/version'

Gem::Specification.new do |spec|
  spec.name          = "GodaddyApi"
  spec.version       = GodaddyApi::VERSION
  spec.authors       = ["Connor Atherton"]
  spec.email         = ["c.liam.atherton@gmail.com"]

  spec.summary       = %q{A ruby library for interacting with the godaddy cloud api}
  spec.description   = %q{A ruby library for interacting with the godaddy cloud api}
  spec.homepage      = "http://github.com/ConnorAtherton/godaddy-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "faraday"
  spec.add_dependency "kartograph"
  spec.add_dependency "virtus"
  spec.add_dependency "resource_kit"
  spec.add_dependency "activesupport"
end
