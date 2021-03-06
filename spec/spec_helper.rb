ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require 'minitest/reporters'
require 'builder'
require 'maxitest/autorun'
include Rack::Test::Methods

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require './app/app'
require './app/models/params_operators'
require './app/models/guides'
Dir['./lib/**/*.rb'].each { |file| require file }
Dir['./app/**/*.rb'].each { |file| require file }

def app
  AppController
end

class StsProxySpec < MiniTest::Spec

end
