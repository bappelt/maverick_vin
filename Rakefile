require 'rake/testtask'
require 'bundler/version'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end

desc 'Build gem'
task :build do
  system 'gem build maverick_vin_parser.gemspec'
end

desc 'Publish gem to Rubygems.org'
task :release => :build do
  system "gem push bundler-#{MaverickVinParser::VERSION}"
end

desc 'Run tests'
task :default => :test

task :cwd do
  puts Dir.pwd
  puts $:
end