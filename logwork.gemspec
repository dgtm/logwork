# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logwork/version'

Gem::Specification.new do |spec|
  spec.name          = "logwork"
  spec.version       = Logwork::VERSION
  spec.authors       = ["Dipesh Gautam"]
  spec.email         = ["dipeshgtm@gmail.com"]

  spec.summary       = %q{Log Work}
  spec.description   = %q{Log Work}
  spec.homepage      = "https://github.com/dgtm/logwork"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = 'logwork'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"

  spec.add_dependency 'thor'
  spec.add_dependency "ruby-units"
  spec.add_dependency "httparty"
end
