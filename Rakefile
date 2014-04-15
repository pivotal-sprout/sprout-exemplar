require 'rake'
require 'rspec/core/rake_task'

task default: %w[foodcritic spec:unit spec:integration]

task :foodcritic do
  sh 'foodcritic . -f any'
end

namespace :spec do
  desc 'Run unit specs (ChefSpec)'
  RSpec::Core::RakeTask.new(:unit) do |t|
    t.pattern = 'spec/unit/**/*_spec.rb'
  end

  desc 'Run integration specs (Will actually execute recipe!)'
  RSpec::Core::RakeTask.new(:integration) do |t|
    t.pattern = 'spec/integration/**/*_spec.rb'
  end
end
