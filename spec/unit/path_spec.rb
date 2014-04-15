require 'unit/spec_helper'

describe 'sprout-foobar::path' do
  let(:runner) { ChefSpec::Runner.new }

  it 'creates a file in the home directory' do
    runner.converge(described_recipe)
    expect(runner).to touch_file('/home/fauxhai/foobar')
  end

  it 'respects the path attribute for the file' do
    runner.node.set['sprout']['foobar']['path'] = '/path/to/foobar'
    runner.converge(described_recipe)
    expect(runner).to touch_file('/path/to/foobar')
  end
end
