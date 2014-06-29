# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bitbucket/version'

Gem::Specification.new do |spec|
  spec.name          = "bitbucket"
  spec.version       = Bitbucket::VERSION
  spec.authors       = ["hirakiuc"]
  spec.email         = ["hirakiuc@gmail.com"]
  spec.summary       = %q{ ruby wrapper for the Bitbucket REST API (v2) with oauth }
  spec.description   = %q{ ruby wrapper for the Bitbucket REST API (v2) with oauth }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport'
  spec.add_dependency 'faraday'
  spec.add_dependency 'faraday_middleware'
  spec.add_dependency 'simple_oauth'
  spec.add_dependency 'activemodel'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
