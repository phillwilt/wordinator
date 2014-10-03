ENV['RACK_ENV'] = 'test'

require_relative File.join('..', 'lib/wordinator')

RSpec.configure do |config|
  include Rack::Test::Methods

  def app
    Wordinator
  end
end
