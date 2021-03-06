require 'rails_helper'

module Spree
  module Stock
    module Splitter
      describe Base, type: :model do
        let(:packer) { build(:stock_packer) }
        let(:stock_location) { mock_model(Spree::StockLocation) }

        it 'continues to splitter chain' do
          splitter1 = Spree::Stock::Splitter::Base.new(stock_location)
          splitter2 = Spree::Stock::Splitter::Base.new(stock_location, splitter1)
          packages = []

          expect(splitter1).to receive(:split).with(packages)
          splitter2.split(packages)
        end

        it 'accepts a packer (deprecated)' do
          splitter = Spree::Deprecation.silence do
            Spree::Stock::Splitter::Base.new(packer)
          end

          expect(splitter.stock_location).to eq(packer.stock_location)
        end
      end
    end
  end
end
