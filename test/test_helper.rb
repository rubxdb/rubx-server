require File.expand_path('../../lib/rubx', __FILE__)

require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
