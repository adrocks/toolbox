# frozen_string_literal: true

require 'bundler/setup'
require 'toolbox'
require 'faraday'
require 'faraday_middleware'

RSpec.configure do |config|
  TOOLBOX_HOST=ENV.fetch('TOOLBOX_HOST', 'http://www.microkube.com')
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end