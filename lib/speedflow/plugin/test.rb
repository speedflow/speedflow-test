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
        # args - Some arguments :)
        #
        # Returns Hash of arguments.
        def method_missing(*args)
          action = args.first
          arguments = args.last

          raise NoMethodError if action.to_s == 'action_no_method'

          puts "Load: #{action} with args: #{arguments}"

          arguments
        end
      end
    end
  end
end
