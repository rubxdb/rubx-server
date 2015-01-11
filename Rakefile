#!/usr/bin/env rake

task :env do
  require './lib/rubx'
end

Dir[File.expand_path("../lib/tasks/*.rb", __FILE__)].sort.each do |path|
  require path
end

task :default => :test
