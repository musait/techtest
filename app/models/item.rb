class Item < ApplicationRecord
  has_many :delivery_items
  has_many :deliveries, through: :delivery_items
end
