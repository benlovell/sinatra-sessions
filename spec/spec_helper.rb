ENV['RACK_ENV'] = 'test'

require File.expand_path(File.dirname(__FILE__) + '/../app.rb')
require 'spec'
require 'spec/interop/test'
require 'rack/test'
require 'webrat'

Test::Unit::TestCase.send :include, Rack::Test::Methods

def app
  Sinatra::Application
end

Spec::Runner.configure do |config|
  config.include Webrat::Matchers
end

