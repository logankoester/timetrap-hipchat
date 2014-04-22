# -*- ruby -*-

require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :xzibit, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'jeweler'

Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = 'timetrap-hipchat'
  gem.version = '1.0.0'
  gem.summary = 'Timetrap hooks to notify a Hipchat room'
  gem.description = 'Extends the Timetrap timetracker by providing command hooks to notify a Hipchat room when you clock in/out/resume'
  gem.homepage = 'https://github.com/logankoester/timetrap-hipchat'
  gem.authors = ['Logan Koester']
  gem.email = ['logan@logankoester.com']
  gem.license = 'MIT'

  gem.files.include 'History.txt'
  gem.files.include 'README.md'
  gem.files.include 'Rakefile'
  gem.files.include 'bin/timetrap-hipchat'
  gem.files.include 'lib/timetrap/hipchat/templates/hipchat.yml.tt'
  gem.files.include 'lib/timetrap/hipchat/templates/in.rb'
  gem.files.include 'lib/timetrap/hipchat/templates/out.rb'
  gem.files.include 'lib/timetrap/hipchat/templates/resume.rb'
  gem.files.include 'lib/timetrap/hipchat.rb'

  # dependencies defined in Gemfile

  gem.executables = ['timetrap-hipchat']
end

Jeweler::RubygemsDotOrgTasks.new

# vim: syntax=ruby
