require 'speedflow/plugin/test/version'

module Speedflow
  module Plugin
    module Test
      class << self
        def method_missing(*args)
          action = args.first
          arguments = args.last

          puts "Load: #{action} with args: #{arguments}"
        end
      end
    end
  end
end
