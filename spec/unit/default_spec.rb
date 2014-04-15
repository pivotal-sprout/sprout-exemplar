require 'unit/spec_helper'

describe 'sprout-foobar::default' do
  let(:runner) { ChefSpec::Runner.new }

  it 'includes the path recipe' do
    runner.converge(described_recipe)
    expect(runner).to include_recipe('sprout-foobar::path')
  end
end
