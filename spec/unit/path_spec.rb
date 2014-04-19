require 'unit/spec_helper'

describe 'sprout-exemplar::path' do
  let(:runner) { ChefSpec::Runner.new }

  it 'creates a file in the home directory' do
    runner.converge(described_recipe)
    expect(runner).to touch_file('/home/fauxhai/exemplar')
  end

  it 'respects the path attribute for the file' do
    runner.node.set['sprout']['exemplar']['path'] = '/path/to/exemplar'
    runner.converge(described_recipe)
    expect(runner).to touch_file('/path/to/exemplar')
  end
end
