# Run Coverage report
require 'simplecov'
SimpleCov.start do
  add_filter 'spec/'
  add_filter 'app/overrides'
  add_filter 'lib/solidus_subscriptions/engine.rb'
  add_group 'Controllers', 'app/controllers'
  add_group 'Helpers', 'app/helpers'
  add_group 'Mailers', 'app/mailers'
  add_group 'Models', 'app/models'
  add_group 'Views', 'app/views'
  add_group 'Libraries', 'lib'
end

# Coverage can't be 100 because there is some code specific to Solidus v2.6
# and higher
SimpleCov.minimum_coverage 90

# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

require File.expand_path('../dummy/config/environment.rb', __FILE__)

require 'rspec/rails'
require 'rspec/active_model/mocks'
require 'database_cleaner'
require 'ffaker'
require 'pry'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |f| require f }

# Requires factories and other useful helpers defined in spree_core.
require 'spree/testing_support/authorization_helpers'
require 'spree/testing_support/capybara_ext'
require 'spree/testing_support/controller_requests'
require 'spree/testing_support/factories'
require 'spree/testing_support/url_helpers'

# Requires factories defined in lib/solidus_subscriptions/factories.rb
# require 'solidus_legacy_stock_system/testing_support/factories'
require 'solidus_legacy_stock_system/factories'

require 'spec_helper'
