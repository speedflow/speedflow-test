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
        # prompt - Speedflow::Plugin::Prompt object.
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

        # Public: Method to test
        #
        # Returns Hash of arguments.
        def test
          @prompt.warn ' - Pong: test'
          @prompt.warn "   Config: #{@config.all_config}"
          @prompt.warn "   Input: #{@config.all_input}"

          @config.all_input
        end
      end
    end
  end
end
