require 'spec_helper'

describe Speedflow::Plugin::Test::Plugin do
  let(:plugin) { ::Speedflow::Plugin::Test::Plugin.new(double, double) }

  it '.action_test' do
    allow(plugin.prompt).to receive(:warn).with(' - Pong: test')
    allow(plugin.config).to receive(:all_config)
    allow(plugin.prompt).to receive(:warn)
    allow(plugin.config).to receive(:all_input).and_return(hello: 'world')
    allow(plugin.prompt).to receive(:warn)

    expect(plugin.action_test)
      .to eq(hello: 'world')
  end
end
