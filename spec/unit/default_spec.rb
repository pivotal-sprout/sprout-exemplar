require 'unit/spec_helper'

RSpec.describe 'sprout-exemplar::default' do
  let(:runner) { ChefSpec::SoloRunner.new }

  it 'includes the path recipe' do
    runner.converge(described_recipe)
    expect(runner).to include_recipe('sprout-exemplar::path')
  end
end
