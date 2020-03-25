class DeliveryItem < ApplicationRecord
  belongs_to :item
  belongs_to :delivery
end
