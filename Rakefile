# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "legal-docs"
  gem.homepage = "http://github.com/tigrish/legal-docs"
  gem.license = "MIT"
  gem.summary = %Q{Customisable legal documents for your app}
  gem.description = %Q{legal-docs provides a customisable privacy policy and terms of service, backed by I18n that can used in your apps.}
  gem.email = "chris@tigrish.com"
  gem.authors = ["Christopher Dell"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

task :default => :spec