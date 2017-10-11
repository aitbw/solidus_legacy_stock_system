module SolidusLegacyStockSystem
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'solidus_legacy_stock_system'

    initializer 'spree.stock.coordinator_class' do |app|
      app.config.spree.preferences.stock.coordinator_class = 'Spree::Stock::Coordinator'
    end

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
