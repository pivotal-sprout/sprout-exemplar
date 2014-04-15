require 'spec_helper'

describe 'sprout-homebrew' do
  before :all do
    expect(system('soloist')).to be_true
  end

  it 'can assert after the cookbook has been converged' do
    expect(false).not_to be_true
  end
end
