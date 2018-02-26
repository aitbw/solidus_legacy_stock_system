class CreateOrderStockLocations < ActiveRecord::Migration[5.1]
  def change
    return if table_exists?("spree_order_stock_locations")
    create_table "spree_order_stock_locations" do |t|
      t.integer "order_id"
      t.integer "variant_id"
      t.integer "quantity"
      t.integer "stock_location_id"
      t.boolean "shipment_fulfilled", default: false, null: false
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
