require 'spec_helper'

describe Speedflow::Plugin::Test::Plugin do
  let(:plugin) { ::Speedflow::Plugin::Test::Plugin.new(double, double) }

  it '.method_missing' do
    allow(plugin.prompt).to receive(:warn).with(' - Pong: foo')
    allow(plugin.config).to receive(:all_config)
    allow(plugin.prompt).to receive(:warn)
    allow(plugin.config).to receive(:all_input)
    allow(plugin.prompt).to receive(:warn)

    plugin.foo(bar: 'baz')

    expect { plugin.action_no_method(bar: 'baz') }
      .to raise_error(NoMethodError)
  end
end
