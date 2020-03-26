class DeliveryItem < ApplicationRecord
  belongs_to :item
  belongs_to :delivery
  after_create :increment_items_count
  after_destroy :decrement_items_count

  def increment_items_count
    @delivery = Delivery.find(self.delivery_id)
    @delivery.quantity_ref += 1
    @delivery.save
  end

  def decrement_items_count
    @delivery = Delivery.find(self.delivery_id)
    @delivery.quantity_ref -= 1
    @delivery.save
  end
end
