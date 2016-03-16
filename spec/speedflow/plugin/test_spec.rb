require 'spec_helper'

describe Speedflow::Plugin::Test do
  it 'has a version number' do
    expect(Speedflow::Plugin::Test::VERSION).not_to be nil
  end

  it 'has a missing method catcher' do
    expect { Speedflow::Plugin::Test.foo({bar: 'baz'}) }.to(
      output("Load: foo with args: {:bar=>\"baz\"}\n").to_stdout)
  end
end
