require 'spree/testing_support/factories/stock_location_factory'

FactoryBot.define do
  # must use build()
  factory :stock_packer, class: Spree::Stock::Packer do
    transient {
      stock_location { build(:stock_location) }
      contents { [] }
    }

    initialize_with { new(stock_location, contents) }
  end
end
