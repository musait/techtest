class AddQuantityRefToDeliveries < ActiveRecord::Migration[6.0]
  def change
    add_column :deliveries, :quantity_ref, :integer, default: 0
  end
end
