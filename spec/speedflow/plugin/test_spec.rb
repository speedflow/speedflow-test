require 'spec_helper'

describe Speedflow::Plugin::Test do
  it 'has a version number' do
    expect(Speedflow::Plugin::Test::VERSION).not_to be nil
  end

  it '.method_missing' do
    expect { Speedflow::Plugin::Test.foo(bar: 'baz') }
      .to output("Load: foo with args: {:bar=>\"baz\"}\n").to_stdout
    expect(Speedflow::Plugin::Test.foo(bar: 'baz'))
      .to include(bar: 'baz')
    expect { Speedflow::Plugin::Test.no_action(bar: 'baz') }
      .to raise_error(NoMethodError)
  end
end
