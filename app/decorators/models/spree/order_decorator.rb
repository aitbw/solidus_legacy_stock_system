# frozen_string_literal: true

Spree::Order.class_eval do
  has_many :order_stock_locations, class_name: 'Spree::OrderStockLocation'
  has_many :stock_locations, through: :order_stock_locations
end
