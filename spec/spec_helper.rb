require_relative '../calculator'
require_relative '../lender'

require 'yaml'

RSpec.configure do |config|
  config.tty = true
  config.color = true
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end