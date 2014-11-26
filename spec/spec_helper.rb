ENV['RACK_ENV'] = 'test'

require_relative File.join('..', 'lib/wordinator')

RSpec.configure do |config|
  include Rack::Test::Methods
  config.color = true
  config.tty = true

  def app
    Wordinator
  end
end
