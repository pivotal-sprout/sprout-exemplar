require 'spec_helper'

describe 'sprout-foobar' do
  before :all do
    expect(File).not_to be_exists("#{ENV['HOME']}/foobar")
    expect(system('soloist')).to be_true
  end

  it 'creates a file in the home directory' do
    expect(File).to be_exists("#{ENV['HOME']}/foobar")
  end

  it 'is owned by the current user not root' do
    expect(File.stat("#{ENV['HOME']}/foobar")).to be_owned
  end
end
