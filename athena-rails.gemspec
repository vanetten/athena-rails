# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'athena/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "athena-rails"
  spec.version       = Athena::Rails::VERSION
  spec.authors       = ["William Van Etten, PhD"]
  spec.email         = ["vanetten@bioteam.net"]
  spec.summary       = "AthenaJDBC41-1.0.0.jar for JRuby Rails."
  spec.description   = "This gem provides AthenaJDBC41-1.0.0.jar for your JRuby Rails application."
  spec.homepage      = "https://github.com/vanetten/athena-rails"
  spec.license       = "MIT"

  spec.metadata['allowed_push_host'] = "https://rubygems.org"

  spec.files         = `git ls-files -z`.split("\x0") + ["LICENSE", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", "~> 4.1"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
