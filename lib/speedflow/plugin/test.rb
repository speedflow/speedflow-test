require 'speedflow/plugin/test/version'

# Speedflow GEM, help you to boost your flow and keep your time
module Speedflow
  module Plugin
    # Speedflow test plugin
    module Test
      class << self
        # Public: Method missign
        #
        # Method used to catch others methods to test.
        #
        # *args - Some arguments :)
        #
        # Returns nothing.
        def method_missing(*args)
          action = args.first
          arguments = args.last

          puts "Load: #{action} with args: #{arguments}"
        end
      end
    end
  end
end
