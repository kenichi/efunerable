require "rake/testtask"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

Rake::TestTask.new :test do |t|
  t.test_files = FileList['test/**/*_test.rb']
end

task default: [:spec, :test]
