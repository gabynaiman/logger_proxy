require "bundler/gem_tasks"
require 'rake/testtask'
require 'coveralls/rake/task'

Rake::TestTask.new(:spec) do |t|
  t.libs << 'spec'
  t.pattern = 'spec/**/*_spec.rb'
  t.verbose = false
end

Coveralls::RakeTask.new

task default: :spec