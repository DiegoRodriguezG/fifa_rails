# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fifa_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "fifa_rails"
  spec.version       = FifaRails::VERSION
  spec.authors       = ["Diego Rodriguez"]
  spec.email         = ["drodriguez@gmail.com"]

  spec.summary       = %q{Get info for real players and teams}
  spec.homepage      = "https://github.com/DiegoRodriguezG/fifa_rails"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
