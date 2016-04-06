module Speedflow
  module Plugin
    module Test
      # Speedflow test plugin
      class Plugin
        # @return [Prompt] Plugin prompt.
        attr_accessor :prompt

        # @return [Config] Plugin config.
        attr_accessor :config

        # Public: Constructor
        #
        # config - Speedflow::Plugin::Configuration object.
        #
        # Examples
        #
        #    Manager.new(<Speedflow::Plugin::Configuration.new({})>)
        #    # => <Speedflow::Plugin::Test>
        #
        # Returns nothing.
        def initialize(config, prompt)
          @config = config
          @prompt = prompt
        end

        # Public: Method missing
        #
        # Method used to catch others methods to test.
        #
        # args - Some arguments :)
        #
        # Returns Hash of arguments.
        def method_missing(*args)
          action = args.first

          raise NoMethodError if action.to_s == 'action_no_method'

          @prompt.warn " - Pong: #{action}"
          @prompt.warn "   Config: #{@config.all_config}"
          @prompt.warn "   Input: #{@config.all_input}"

          @config.all_input
        end
      end
    end
  end
end
