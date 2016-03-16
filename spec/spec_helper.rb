$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'simplecov'

if ENV['CODECLIMATE_REPO_TOKEN']
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
end

SimpleCov.start

require 'speedflow/plugin/test'
