class CreateDeliveryItems < ActiveRecord::Migration[6.0]
  def change
    create_table :delivery_items do |t|
      t.belongs_to :item
      t.belongs_to :delivery
      t.timestamps
    end
  end
end
