# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fifa_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "fifa_rails"
  spec.version       = FifaRails::VERSION
  spec.authors       = ["Diego Rodriguez"]
  spec.email         = ["drodriguez@gmail.com"]

  spec.summary       = "Get info for real players and teams"
  spec.homepage      = "https://github.com/DiegoRodriguezG/fifa_rails"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "rest-client", ["1.8.0"]
end
