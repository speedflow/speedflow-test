# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'speedflow-plugin-test'

Gem::Specification.new do |spec|
  spec.name          = 'speedflow-plugin-test'
  spec.version       = Speedflow::Plugin::Test::VERSION
  spec.authors       = ['Julien Breux']
  spec.email         = ['julien.breux@gmail.com']

  spec.summary       = 'A Speedflow plugin to help to test flows.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/speedflow/speedflow-plugin-test'
  spec.license       = 'MIT'

  spec.files         = Dir[
    'LICENSE', 'README.md', 'lib/**/*', 'bin/**/*', 'spec/**/*'
  ]
  spec.bindir        = 'bin'
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.3'

  # Core dependencies
  # spec.add_dependency 'speedflow', '~> 3.0'

  # Development dependencies
  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 11.1'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'fuubar', '~> 2.0'
  spec.add_development_dependency 'guard-rspec', '~> 4.6'
  spec.add_development_dependency 'guard-rubocop', '~> 1.2'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 0.5'
  spec.add_development_dependency 'simplecov', '~> 0.11'
end
