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
    'LICENSE', 'README.md', 'version', 'lib/**/*', 'bin/**/*', 'spec/**/*'
  ]
  spec.bindir        = 'bin'
  spec.require_paths = ['lib']

  # Development dependencies
  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'simplecov'
end
