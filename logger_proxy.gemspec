# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logger_proxy/version'

Gem::Specification.new do |spec|
  spec.name          = "logger_proxy"
  spec.version       = LoggerProxy::VERSION
  spec.authors       = ["Gabriel Naiman"]
  spec.email         = ["gabynaiman@gmail.com"]
  spec.description   = "Logger proxy"
  spec.summary       = "Logger proxy"
  spec.homepage      = "https://github.com/gabynaiman/logger_proxy"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 4.7"
  spec.add_development_dependency "turn", "~> 0.9"
  spec.add_development_dependency "simplecov"
end
