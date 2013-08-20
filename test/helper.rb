ENV['RAILS_ENV'] ||= 'test'
# require File.expand_path '../dummy/config/environment', __FILE__

require 'minitest/autorun'
require File.join(File.dirname(__FILE__), *%w{.. lib gridhook})

class TestCase < MiniTest::Unit::TestCase
  def self.test(name, &block)
    define_method("test_#{name.gsub(/\W/, '_')}", &block) if block
  end
end
