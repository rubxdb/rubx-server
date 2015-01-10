lib_path = File.dirname(__FILE__)
$LOAD_PATH << lib_path unless $LOAD_PATH.include?(lib_path)
require 'basic_object'

require 'rubygems'
require 'bundler'
Bundler.require

module Rubx
  autoload :Connection, 'rubx/connection'
  autoload :ConnectionOptions, 'rubx/connection_options'

  module_function

  def connect(*args)
    Rubx::Connection.new(*args)
  end
end
